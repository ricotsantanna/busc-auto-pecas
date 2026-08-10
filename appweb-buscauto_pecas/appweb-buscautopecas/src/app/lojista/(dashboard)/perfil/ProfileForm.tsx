"use client";

import { useState } from "react";
import { Store } from "lucide-react";
import { updateStoreProfile } from "@/actions/store-actions";

type StoreData = {
  name: string;
  whatsapp: string;
  address: string;
  city: string;
  state: string;
  logoUrl: string | null;
};

export default function ProfileForm({ store }: { store: StoreData }) {
  const [loading, setLoading] = useState(false);
  const [successMsg, setSuccessMsg] = useState("");
  const [errorMsg, setErrorMsg] = useState("");

  async function handleSubmit(formData: FormData) {
    setLoading(true);
    setSuccessMsg("");
    setErrorMsg("");

    try {
      const res = await updateStoreProfile(formData);
      if (res.success) {
        setSuccessMsg("Perfil atualizado com sucesso!");
      } else {
        setErrorMsg(res.error || "Erro ao atualizar perfil.");
      }
    } catch (e: any) {
      setErrorMsg("Ocorreu um erro inesperado.");
    } finally {
      setLoading(false);
    }
  }

  return (
    <div className="bg-white p-6 rounded-xl border border-slate-200 shadow-sm max-w-2xl">
      <div className="flex items-center gap-3 mb-6">
        <div className="w-10 h-10 rounded-full bg-orange-100 flex items-center justify-center text-orange-600">
          <Store className="w-5 h-5" />
        </div>
        <div>
          <h2 className="text-lg font-bold text-slate-900">Dados da Loja</h2>
          <p className="text-sm text-slate-500">
            Essas informações aparecerão para os clientes na busca por peças.
          </p>
        </div>
      </div>

      {successMsg && (
        <div className="mb-4 p-3 bg-green-50 text-green-700 border border-green-200 rounded-lg text-sm">
          {successMsg}
        </div>
      )}
      {errorMsg && (
        <div className="mb-4 p-3 bg-red-50 text-red-700 border border-red-200 rounded-lg text-sm">
          {errorMsg}
        </div>
      )}

      <form action={handleSubmit} className="space-y-4">
        <div>
          <label className="block text-sm font-medium text-slate-700 mb-1">
            Nome da Loja
          </label>
          <input
            name="name"
            type="text"
            required
            defaultValue={store.name}
            className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500"
          />
        </div>

        <div>
          <label className="block text-sm font-medium text-slate-700 mb-1">
            WhatsApp (com DDD)
          </label>
          <input
            name="whatsapp"
            type="text"
            required
            defaultValue={store.whatsapp}
            placeholder="Ex: 5511999999999"
            className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500"
          />
        </div>

        <div>
          <label className="block text-sm font-medium text-slate-700 mb-1">
            Endereço Completo
          </label>
          <input
            name="address"
            type="text"
            required
            defaultValue={store.address}
            className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500"
          />
        </div>

        <div className="grid grid-cols-2 gap-4">
          <div>
            <label className="block text-sm font-medium text-slate-700 mb-1">
              Cidade
            </label>
            <input
              name="city"
              type="text"
              required
              defaultValue={store.city}
              className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-slate-700 mb-1">
              Estado (UF)
            </label>
            <input
              name="state"
              type="text"
              required
              maxLength={2}
              defaultValue={store.state}
              placeholder="Ex: SP"
              className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500 uppercase"
            />
          </div>
        </div>

        <div className="pt-2">
          <label className="block text-sm font-medium text-slate-700 mb-1">
            Link da Logomarca (URL)
          </label>
          <input
            name="logoUrl"
            type="url"
            defaultValue={store.logoUrl || ""}
            placeholder="https://sua-imagem.com/logo.png"
            className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500"
          />
          <p className="text-xs text-slate-500 mt-1">
            Cole aqui o link da imagem da sua logomarca (Google Drive, Imgur, etc).
          </p>
        </div>

        <div className="pt-4 border-t border-slate-100 flex justify-end">
          <button
            type="submit"
            disabled={loading}
            className="px-6 py-2 bg-orange-600 text-white rounded-lg font-medium hover:bg-orange-700 transition-colors disabled:opacity-50"
          >
            {loading ? "Salvando..." : "Salvar Alterações"}
          </button>
        </div>
      </form>
    </div>
  );
}
