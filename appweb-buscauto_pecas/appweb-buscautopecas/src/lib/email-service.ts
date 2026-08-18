// src/lib/email-service.ts — Serviço de Alertas de Peças Inéditas para o Administrador
export interface InboxAlertItem {
  rawPartName: string;
  cleanPartName: string;
  manufacturer?: string;
  manufacturerCode?: string;
  make?: string;
  model?: string;
  years?: string;
}

export interface SendAdminAlertOptions {
  storeName: string;
  items: InboxAlertItem[];
}

export async function sendAdminInboxNotification(options: SendAdminAlertOptions): Promise<{ success: boolean; message: string }> {
  const adminEmail = process.env.ADMIN_ALERT_EMAIL || "admin@buscautopecas.com.br";
  const { storeName, items } = options;

  console.log(`\n====================================================================`);
  console.log(`📧 DISPARANDO ALERTA DE PEÇAS INÉDITAS PARA O ADMINISTRADOR:`);
  console.log(`📩 Destinatário: ${adminEmail}`);
  console.log(`🏪 Loja Origem: ${storeName}`);
  console.log(`📦 Qtd. Itens Inéditos em Triagem: ${items.length}`);
  console.log(`====================================================================\n`);

  const itemsHtml = items
    .map(
      (item, idx) => `
      <tr style="border-bottom: 1px solid #e2e8f0;">
        <td style="padding: 8px 12px; font-weight: bold;">${idx + 1}</td>
        <td style="padding: 8px 12px; font-weight: bold; color: #1e293b;">${item.cleanPartName} <br/><small style="color: #64748b; font-weight: normal;">(Original: ${item.rawPartName})</small></td>
        <td style="padding: 8px 12px;">${item.manufacturer || "N/A"} <br/><small style="color: #64748b;">${item.manufacturerCode || ""}</small></td>
        <td style="padding: 8px 12px;">${item.make || ""} ${item.model || ""} <small style="color: #64748b;">(${item.years || ""})</small></td>
      </tr>
    `
    )
    .join("");

  const emailHtml = `
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="utf-8" />
        <title>Alerta de Peças Inéditas — BuscAutoPeças</title>
      </head>
      <body style="font-family: Arial, sans-serif; background-color: #f8fafc; margin: 0; padding: 20px;">
        <div style="max-width: 600px; margin: 0 auto; background: #ffffff; border-radius: 12px; border: 1px solid #e2e8f0; padding: 24px;">
          <h2 style="color: #ea580c; margin-top: 0;">⚠️ Fila de Triagem: Novas Peças Inéditas Detectadas</h2>
          <p style="color: #334155;">A loja parceira <strong>${storeName}</strong> importou uma planilha com <strong>${items.length} peças inéditas</strong> que necessitam de homologação no Catálogo Mestre Canônico.</p>
          
          <table style="width: 100%; text-align: left; border-collapse: collapse; margin: 20px 0; font-size: 13px;">
            <thead>
              <tr style="background: #f1f5f9; color: #475569;">
                <th style="padding: 8px 12px;">#</th>
                <th style="padding: 8px 12px;">Peça Sanitizada</th>
                <th style="padding: 8px 12px;">Fabricante / Cód.</th>
                <th style="padding: 8px 12px;">Veículo</th>
              </tr>
            </thead>
            <tbody>
              ${itemsHtml}
            </tbody>
          </table>

          <div style="background: #fff7ed; border-left: 4px solid #ea580c; padding: 12px; border-radius: 4px; margin-top: 16px;">
            <p style="margin: 0; font-size: 13px; color: #9a3412;">
              As ofertas foram vinculadas provisoriamente com a flag <strong>is_pending_review = true</strong> até a sua aprovação no Painel Administrativo.
            </p>
          </div>
        </div>
      </body>
    </html>
  `;

  // Se houver chave do Resend / SendGrid configurada na Cloudflare
  if (process.env.RESEND_API_KEY) {
    try {
      const res = await fetch("https://api.resend.com/emails", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${process.env.RESEND_API_KEY}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          from: "BuscAutoPeças Notificações <notificacoes@buscautopecas.com.br>",
          to: [adminEmail],
          subject: `[Triagem IA] ${items.length} Novas Peças Inéditas da Loja ${storeName}`,
          html: emailHtml,
        }),
      });
      if (res.ok) {
        console.log("✅ E-mail enviado com sucesso via Resend API.");
        return { success: true, message: "E-mail enviado via Resend." };
      }
    } catch (e) {
      console.error("Erro ao enviar e-mail via Resend:", e);
    }
  }

  return {
    success: true,
    message: `Alerta registrado com sucesso no log da aplicação para o e-mail ${adminEmail}.`,
  };
}
