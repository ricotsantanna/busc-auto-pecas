import { SignJWT, jwtVerify } from "jose";

const secretKey = process.env.JWT_SECRET || "fallback-secret-key-for-dev-only-buscauto";
const key = new TextEncoder().encode(secretKey);

// Payload do Token de Lojista
export interface AuthPayload {
  companyId: string;
  storeId?: string; // Id da loja (filial) principal selecionada
  role: "SELLER";
}

export async function encryptJWT(payload: AuthPayload) {
  return await new SignJWT({ ...payload })
    .setProtectedHeader({ alg: "HS256" })
    .setIssuedAt()
    .setExpirationTime("7d") // Duração de 7 dias
    .sign(key);
}

export async function decryptJWT(input: string): Promise<AuthPayload | null> {
  try {
    const { payload } = await jwtVerify(input, key, {
      algorithms: ["HS256"],
    });
    return payload as unknown as AuthPayload;
  } catch (error) {
    return null; // JWT inválido ou expirado
  }
}
