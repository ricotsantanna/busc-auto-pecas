import { getSession } from "@/lib/auth-edge";
import { redirect } from "next/navigation";
export const runtime = "edge";
import { withDbOrMock, schema } from "@/db";
import { eq } from "drizzle-orm";
import ProfileForm from "./ProfileForm";

export default async function PerfilPage() {
  const session = await getSession();

  if (!session) {
    redirect("/lojista/login");
  }

  const store = await withDbOrMock(
    async (db) => {
      const userStores = await db
        .select()
        .from(schema.stores)
        .where(eq(schema.stores.companyId, session.companyId))
        .limit(1);

      return userStores[0] || null;
    },
    () => {
      // Mock data
      return {
        name: "Minha Loja (Mock)",
        whatsapp: "5511999999999",
        address: "Rua Teste, 123",
        city: "São Paulo",
        state: "SP",
        logoUrl: "",
      };
    }
  );

  if (!store) {
    return (
      <div className="p-8 text-center text-slate-500">
        Nenhuma loja vinculada a esta conta.
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-slate-900">Perfil da Loja</h1>
        <p className="mt-1 text-sm text-slate-500">
          Gerencie as informações públicas da sua loja de autopeças.
        </p>
      </div>
      
      <ProfileForm store={store} />
    </div>
  );
}
