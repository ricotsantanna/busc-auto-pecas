"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import Link from "next/link";
import { Store, Mail, Lock, FileText, Phone, MapPin, Building2 } from "lucide-react";

export default function LojistaCadastro() {
  const [formData, setFormData] = useState({
    cnpj: "",
    name: "", // Nome Empresarial (Razão Social)
    storeName: "", // Nome Fantasia
    email: "",
    password: "",
    whatsapp: "",
    address: "",
    city: "",
    state: "",
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const router = useRouter();

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSignup = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError("");

    try {
      const res = await fetch("/api/auth/register", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(formData),
      });

      const data = await res.json();

      if (!res.ok) {
        throw new Error(data.error || "Erro ao fazer cadastro");
      }

      router.push("/lojista");
    } catch (err: any) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-slate-50 flex flex-col justify-center py-12 sm:px-6 lg:px-8">
      <div className="sm:mx-auto sm:w-full sm:max-w-2xl">
        <h2 className="mt-6 text-center text-3xl font-extrabold text-slate-900">
          Crie sua conta Lojista
        </h2>
        <p className="mt-2 text-center text-sm text-slate-600">
          Você tem <span className="font-semibold text-green-600">90 dias grátis</span> para testar a plataforma.{" "}
          <Link href="/lojista/login" className="font-medium text-orange-600 hover:text-orange-500">
            Já tem conta? Faça login
          </Link>
        </p>
      </div>

      <div className="mt-8 sm:mx-auto sm:w-full sm:max-w-2xl">
        <div className="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10 border border-slate-100">
          <form className="space-y-6" onSubmit={handleSignup}>
            {error && (
              <div className="bg-red-50 text-red-500 p-3 rounded-md text-sm border border-red-100">
                {error}
              </div>
            )}

            <div className="grid grid-cols-1 gap-6 sm:grid-cols-2">
              {/* Coluna 1 */}
              <div className="space-y-6">
                <h3 className="text-lg font-medium text-slate-900 border-b pb-2">Dados da Empresa</h3>
                
                <div>
                  <label className="block text-sm font-medium text-slate-700">CNPJ</label>
                  <div className="mt-1 relative">
                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                      <FileText className="h-5 w-5 text-slate-400" />
                    </div>
                    <input
                      name="cnpj"
                      type="text"
                      required
                      value={formData.cnpj}
                      onChange={handleChange}
                      className="appearance-none block w-full pl-10 pr-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="00.000.000/0001-00"
                    />
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-slate-700">Razão Social</label>
                  <div className="mt-1 relative">
                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                      <Building2 className="h-5 w-5 text-slate-400" />
                    </div>
                    <input
                      name="name"
                      type="text"
                      required
                      value={formData.name}
                      onChange={handleChange}
                      className="appearance-none block w-full pl-10 pr-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="Auto Peças Silva LTDA"
                    />
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-slate-700">E-mail Administrativo</label>
                  <div className="mt-1 relative">
                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                      <Mail className="h-5 w-5 text-slate-400" />
                    </div>
                    <input
                      name="email"
                      type="email"
                      required
                      value={formData.email}
                      onChange={handleChange}
                      className="appearance-none block w-full pl-10 pr-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="contato@empresa.com.br"
                    />
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-slate-700">Senha de Acesso</label>
                  <div className="mt-1 relative">
                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                      <Lock className="h-5 w-5 text-slate-400" />
                    </div>
                    <input
                      name="password"
                      type="password"
                      required
                      value={formData.password}
                      onChange={handleChange}
                      className="appearance-none block w-full pl-10 pr-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="••••••••"
                    />
                  </div>
                </div>
              </div>

              {/* Coluna 2 */}
              <div className="space-y-6">
                <h3 className="text-lg font-medium text-slate-900 border-b pb-2">Dados da 1ª Loja</h3>
                
                <div>
                  <label className="block text-sm font-medium text-slate-700">Nome Fantasia (Aparece no Site)</label>
                  <div className="mt-1 relative">
                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                      <Store className="h-5 w-5 text-slate-400" />
                    </div>
                    <input
                      name="storeName"
                      type="text"
                      required
                      value={formData.storeName}
                      onChange={handleChange}
                      className="appearance-none block w-full pl-10 pr-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="Silva Auto Peças Centro"
                    />
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-slate-700">WhatsApp (Para Vendas)</label>
                  <div className="mt-1 relative">
                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                      <Phone className="h-5 w-5 text-slate-400" />
                    </div>
                    <input
                      name="whatsapp"
                      type="text"
                      required
                      value={formData.whatsapp}
                      onChange={handleChange}
                      className="appearance-none block w-full pl-10 pr-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="(21) 99999-9999"
                    />
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-slate-700">Endereço Completo</label>
                  <div className="mt-1 relative">
                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                      <MapPin className="h-5 w-5 text-slate-400" />
                    </div>
                    <input
                      name="address"
                      type="text"
                      required
                      value={formData.address}
                      onChange={handleChange}
                      className="appearance-none block w-full pl-10 pr-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="Rua das Peças, 123"
                    />
                  </div>
                </div>

                <div className="flex gap-4">
                  <div className="flex-1">
                    <label className="block text-sm font-medium text-slate-700">Cidade</label>
                    <input
                      name="city"
                      type="text"
                      required
                      value={formData.city}
                      onChange={handleChange}
                      className="mt-1 appearance-none block w-full px-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="Rio de Janeiro"
                    />
                  </div>
                  <div className="w-24">
                    <label className="block text-sm font-medium text-slate-700">UF</label>
                    <input
                      name="state"
                      type="text"
                      required
                      value={formData.state}
                      onChange={handleChange}
                      className="mt-1 appearance-none block w-full px-3 py-2 border border-slate-300 rounded-md shadow-sm placeholder-slate-400 focus:outline-none focus:ring-orange-500 focus:border-orange-500 sm:text-sm"
                      placeholder="RJ"
                      maxLength={2}
                    />
                  </div>
                </div>
              </div>
            </div>

            <div className="pt-4 border-t">
              <button
                type="submit"
                disabled={loading}
                className="w-full flex justify-center py-3 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-green-600 hover:bg-green-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-green-500 disabled:opacity-50 transition-colors"
              >
                {loading ? "Criando Conta..." : "Criar Conta e Iniciar Período Grátis"}
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
