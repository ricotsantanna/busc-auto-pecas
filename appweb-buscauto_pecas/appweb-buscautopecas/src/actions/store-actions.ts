"use server";

import { eq } from "drizzle-orm";
import { withDbOrMock, schema } from "@/db";
import { getSession } from "@/lib/auth";
import { revalidatePath } from "next/cache";

export async function updateStoreProfile(formData: FormData) {
  try {
    const session = await getSession();
    if (!session) {
      return { success: false, error: "Não autorizado" };
    }

    const name = formData.get("name") as string;
    const address = formData.get("address") as string;
    const city = formData.get("city") as string;
    const state = formData.get("state") as string;
    const whatsapp = formData.get("whatsapp") as string;
    const logoUrl = formData.get("logoUrl") as string;

    if (!name || !address || !city || !state || !whatsapp) {
      return { success: false, error: "Preencha todos os campos obrigatórios." };
    }

    await withDbOrMock(
      async (db) => {
        // Find the first store of this company
        const userStores = await db
          .select()
          .from(schema.stores)
          .where(eq(schema.stores.companyId, session.companyId))
          .limit(1);

        if (userStores.length === 0) {
          throw new Error("Nenhuma loja encontrada para este usuário.");
        }

        const storeId = userStores[0].id;

        // Update the store
        await db
          .update(schema.stores)
          .set({
            name,
            address,
            city,
            state,
            whatsapp,
            logoUrl: logoUrl || null,
          })
          .where(eq(schema.stores.id, storeId));
      },
      () => {
        console.log("Mock updateStoreProfile called", { name, address, city, state, whatsapp, logoUrl });
      }
    );

    revalidatePath("/lojista/perfil");
    return { success: true };
  } catch (error: any) {
    console.error("Error updating store profile:", error);
    return { success: false, error: error.message || "Erro ao atualizar o perfil." };
  }
}
