import { NextRequest, NextResponse } from "next/server";
import { withDbOrMock, schema } from "@/db";
import { crypto } from "@/lib/crypto-polyfill";
import { jwtVerify } from "jose";
import { cookies } from "next/headers";
import { eq } from "drizzle-orm";

export const runtime = "edge";

const JWT_SECRET = new TextEncoder().encode(process.env.JWT_SECRET || "super_secret_dev_key");

// Middleware helper
async function getAuthContext() {
  const cookieStore = await cookies();
  const token = cookieStore.get("auth_token")?.value;
  if (!token) throw new Error("Não autenticado");

  const { payload } = await jwtVerify(token, JWT_SECRET);
  return { companyId: payload.companyId as string };
}

export async function POST(req: NextRequest) {
  try {
    // 1. Verify user
    await getAuthContext();

    const { rawText } = (await req.json()) as { rawText: string };

    if (!rawText || rawText.trim() === "") {
      return NextResponse.json({ error: "Texto vazio" }, { status: 400 });
    }

    // 2. Setup Cloudflare AI (Llama 3) via REST API
    const accountId = process.env.CLOUDFLARE_ACCOUNT_ID;
    const apiToken = process.env.CLOUDFLARE_API_TOKEN;

    let parsedData;

    if (accountId && apiToken) {
      // Execute Cloudflare AI
      const systemPrompt = `
      Você é um assistente especialista em catálogos de autopeças.
      Sua tarefa é extrair as informações de uma peça automotiva a partir de um texto não estruturado escrito por um mecânico ou lojista.
      
      Regras:
      1. Extraia o nome da peça (nomeDaPeca). Ex: "Para-choque Dianteiro", "Pastilha de Freio".
      2. Extraia o nome do fabricante (fabricante) se houver.
      3. Extraia o código da peça (codigoPeca) se houver.
      4. Você DEVE retornar APENAS um JSON válido. Não inclua nenhum texto antes ou depois do JSON. Não inclua markdown como \`\`\`json.
      
      Formato do JSON de saída:
      {
        "nomeDaPeca": "string",
        "fabricante": "string ou 'Desconhecido'",
        "codigoPeca": "string ou 'N/A'"
      }`;

      const aiResponse = await fetch(
        `https://api.cloudflare.com/client/v4/accounts/${accountId}/ai/run/@cf/meta/llama-3-8b-instruct`,
        {
          headers: { Authorization: `Bearer ${apiToken}`, "Content-Type": "application/json" },
          method: "POST",
          body: JSON.stringify({
            messages: [
              { role: "system", content: systemPrompt },
              { role: "user", content: rawText }
            ]
          })
        }
      );

      if (!aiResponse.ok) {
        throw new Error("Erro na API de Inteligência Artificial");
      }

      const aiResult = (await aiResponse.json()) as any;
      const responseText = aiResult.result.response;
      
      // Clean up the text in case Llama returned markdown formatting
      const cleanJson = responseText.replace(/```json/g, "").replace(/```/g, "").trim();
      parsedData = JSON.parse(cleanJson);
    } else {
      // MOCK FALLBACK: If API keys are not set, return a mock response for development
      console.warn("CLOUDFLARE_ACCOUNT_ID ou CLOUDFLARE_API_TOKEN não encontrados. Usando Mock IA.");
      parsedData = {
        nomeDaPeca: "Peça Genérica Extraída (Mock)",
        fabricante: "Desconhecido",
        codigoPeca: "N/A"
      };
    }

    // 3. Save as unapproved part in the database
    let partId = crypto.randomUUID();
    
    await withDbOrMock(
      async (db) => {
        const inserted = await db.insert(schema.masterParts).values({
          name: parsedData.nomeDaPeca,
          manufacturer: parsedData.fabricante,
          manufacturerCode: parsedData.codigoPeca,
          categoryId: "c-1", // Categoria Genérica (Motor) - Ajustar depois
          description: `Extraído via IA do texto original: "${rawText}"`,
          isApproved: false, // Needs admin approval!
        }).returning({ id: schema.masterParts.id });
        if (inserted.length > 0) {
          partId = inserted[0].id;
        }
      },
      () => { console.log("Mock db insert for AI part") }
    );

    return NextResponse.json({ 
      success: true, 
      partId: partId,
      extractedData: parsedData 
    });

  } catch (error: any) {
    console.error("AI Parser error:", error);
    return NextResponse.json(
      { error: error.message || "Erro ao processar texto com a IA" },
      { status: 500 }
    );
  }
}
