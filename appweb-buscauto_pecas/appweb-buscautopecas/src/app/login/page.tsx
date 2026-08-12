"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import {
  Wrench,
  Store,
  Lock,
  Mail,
  Building,
  Phone,
  MapPin,
  ShieldCheck,
  ArrowRight,
  CheckCircle2,
  AlertCircle,
  Eye,
  EyeOff,
  User,
  Sparkles,
} from "lucide-react";

export default function MerchantLoginPage() {
  const router = useRouter();
  const [activeTab, setActiveTab] = useState<"login" | "register">("login");

  // State do formulário de Login
  const [loginEmail, setLoginEmail] = useState("");
  const [loginPassword, setLoginPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false);
  const [loginLoading, setLoginLoading] = useState(false);
  const [loginError, setLoginError] = useState("");

  // State do formulário de Cadastro
  const [regName, setRegName] = useState("");
  const [regCnpj, setRegCnpj] = useState("");
  const [regEmail, setRegEmail] = useState("");
  const [regPhone, setRegPhone] = useState("");
  const [regCity, setRegCity] = useState("");
  const [regState, setRegState] = useState("SP");
  const [regType, setRegType] = useState<"TRADICIONAL" | "DESMANCHE">("TRADICIONAL");
  const [regPassword, setRegPassword] = useState("");
  const [regLoading, setRegLoading] = useState(false);
  const [regSuccess, setRegSuccess] = useState(false);

  function handleLogin(e: React.FormEvent) {
    e.preventDefault();
    setLoginError("");
    setLoginLoading(true);

    setTimeout(() => {
      setLoginLoading(false);
      // Redireciona para o Painel do Lojista
      router.push("/lojista/estoque");
    }, 800);
  }

  function handleRegister(e: React.FormEvent) {
    e.preventDefault();
    setRegLoading(true);

    setTimeout(() => {
      setRegLoading(false);
      setRegSuccess(true);
      setTimeout(() => {
        router.push("/lojista/estoque");
      }, 1200);
    }, 900);
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-50">
      {/* HEADER */}
      <header className="bg-brand-primary text-white sticky top-0 z-40 shadow-sm">
        <div className="container flex items-center justify-between h-16">
          <a href="/" className="flex items-center gap-3">
            <img
              src="/logo-white.svg"
              alt="BuscAutoPeças Logo"
              className="h-10 w-10 shrink-0 object-contain"
            />
            <div className="leading-none">
              <div className="font-extrabold text-lg tracking-tight">
                BuscAuto<span className="text-brand-secondary">Peças</span>
              </div>
              <div className="text-[11px] text-white/70 -mt-0.5">
                Portal do Lojista
              </div>
            </div>
          </a>
          <a
            href="/"
            className="text-sm font-medium text-white/80 hover:text-white transition"
          >
            ← Voltar ao site principal
          </a>
        </div>
      </header>

      {/* CONTEÚDO PRINCIPAL */}
      <div className="flex-1 container py-12 flex flex-col items-center justify-center">
        <div className="w-full max-w-xl">
          {/* TOPO DO CARD */}
          <div className="text-center mb-8">
            <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-orange-100 text-brand-secondary font-semibold text-xs mb-3 ring-1 ring-orange-200">
              <Store className="h-4 w-4" /> Área Exclusiva Parceiros & Lojas Físicas
            </div>
            <h1 className="text-3xl font-extrabold text-brand-ink tracking-tight">
              {activeTab === "login"
                ? "Acesse o Painel da sua Loja"
                : "Cadastre sua Loja no BuscAutoPeças"}
            </h1>
            <p className="mt-2 text-sm text-brand-muted">
              {activeTab === "login"
                ? "Gerencie seus preços, estoque e receba compradores locais direto no seu WhatsApp."
                : "Seja visto por milhares de clientes e mecânicos da sua região sem pagar comissões por venda."}
            </p>
          </div>

          {/* CARD CONTAINER */}
          <div className="bg-white rounded-2xl shadow-xl ring-1 ring-slate-200 overflow-hidden">
            {/* TABS HEADER */}
            <div className="grid grid-cols-2 border-b border-slate-200 bg-slate-50/50">
              <button
                type="button"
                onClick={() => setActiveTab("login")}
                className={`py-4 font-bold text-sm text-center transition flex items-center justify-center gap-2 ${
                  activeTab === "login"
                    ? "bg-white text-brand-primary border-b-2 border-brand-primary shadow-xs"
                    : "text-slate-500 hover:text-slate-900"
                }`}
              >
                <Lock className="h-4 w-4" /> Entrar na Conta
              </button>
              <button
                type="button"
                onClick={() => setActiveTab("register")}
                className={`py-4 font-bold text-sm text-center transition flex items-center justify-center gap-2 ${
                  activeTab === "register"
                    ? "bg-white text-brand-primary border-b-2 border-brand-primary shadow-xs"
                    : "text-slate-500 hover:text-slate-900"
                }`}
              >
                <Sparkles className="h-4 w-4 text-brand-secondary" /> Cadastrar Minha Loja
              </button>
            </div>

            {/* CONTEÚDO DA TAB: LOGIN */}
            {activeTab === "login" && (
              <form onSubmit={handleLogin} className="p-6 md:p-8 space-y-5">
                {loginError && (
                  <div className="p-3.5 rounded-xl bg-red-50 text-red-700 text-sm flex items-center gap-2.5 ring-1 ring-red-200">
                    <AlertCircle className="h-4 w-4 shrink-0" />
                    {loginError}
                  </div>
                )}

                <div>
                  <label className="field-label" htmlFor="email">
                    E-mail ou CNPJ da Loja
                  </label>
                  <div className="relative">
                    <Mail className="pointer-events-none absolute left-3.5 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400" />
                    <input
                      id="email"
                      type="text"
                      required
                      className="field pl-10"
                      placeholder="loja@autopeças.com.br ou 00.000.000/0001-00"
                      value={loginEmail}
                      onChange={(e) => setLoginEmail(e.target.value)}
                    />
                  </div>
                </div>

                <div>
                  <div className="flex items-center justify-between mb-1.5">
                    <label className="field-label mb-0" htmlFor="password">
                      Senha de Acesso
                    </label>
                    <a
                      href="#"
                      className="text-xs text-brand-primary hover:underline font-medium"
                    >
                      Esqueceu a senha?
                    </a>
                  </div>
                  <div className="relative">
                    <Lock className="pointer-events-none absolute left-3.5 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400" />
                    <input
                      id="password"
                      type={showPassword ? "text" : "password"}
                      required
                      className="field pl-10 pr-10"
                      placeholder="••••••••"
                      value={loginPassword}
                      onChange={(e) => setLoginPassword(e.target.value)}
                    />
                    <button
                      type="button"
                      onClick={() => setShowPassword(!showPassword)}
                      className="absolute right-3.5 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-600"
                    >
                      {showPassword ? (
                        <EyeOff className="h-4 w-4" />
                      ) : (
                        <Eye className="h-4 w-4" />
                      )}
                    </button>
                  </div>
                </div>

                <button
                  type="submit"
                  disabled={loginLoading}
                  className="btn-primary w-full py-3 text-base font-bold shadow-md hover:shadow-lg transition"
                >
                  {loginLoading ? (
                    "Acessando painel..."
                  ) : (
                    <>
                      Entrar no Painel <ArrowRight className="h-4 w-4 ml-1" />
                    </>
                  )}
                </button>

                <div className="pt-4 border-t border-slate-100 text-center text-xs text-brand-muted">
                  Ainda não é um lojista parceiro?{" "}
                  <button
                    type="button"
                    onClick={() => setActiveTab("register")}
                    className="font-bold text-brand-primary hover:underline"
                  >
                    Cadastre sua loja gratuitamente
                  </button>
                </div>
              </form>
            )}

            {/* CONTEÚDO DA TAB: CADASTRO */}
            {activeTab === "register" && (
              <form onSubmit={handleRegister} className="p-6 md:p-8 space-y-4">
                {regSuccess ? (
                  <div className="p-6 text-center space-y-3">
                    <div className="h-12 w-12 rounded-full bg-emerald-100 text-emerald-600 grid place-items-center mx-auto">
                      <CheckCircle2 className="h-7 w-7" />
                    </div>
                    <h3 className="text-xl font-extrabold text-brand-ink">
                      Cadastro Realizado com Sucesso!
                    </h3>
                    <p className="text-sm text-brand-muted">
                      Redirecionando você para o painel de estoque...
                    </p>
                  </div>
                ) : (
                  <>
                    {/* TIPO DE LOJA */}
                    <div>
                      <label className="field-label">Tipo de Loja / Estabelecimento</label>
                      <div className="grid grid-cols-2 gap-3">
                        <button
                          type="button"
                          onClick={() => setRegType("TRADICIONAL")}
                          className={`p-3 rounded-xl ring-1 text-left transition text-xs font-semibold ${
                            regType === "TRADICIONAL"
                              ? "bg-blue-50/80 ring-brand-primary text-brand-primary"
                              : "bg-white ring-slate-200 text-slate-600 hover:ring-slate-300"
                          }`}
                        >
                          <div className="font-bold text-sm">Autopeças Tradicional</div>
                          <div className="opacity-80 font-normal mt-0.5">Peças novas com garantia</div>
                        </button>

                        <button
                          type="button"
                          onClick={() => setRegType("DESMANCHE")}
                          className={`p-3 rounded-xl ring-1 text-left transition text-xs font-semibold ${
                            regType === "DESMANCHE"
                              ? "bg-orange-50/80 ring-brand-secondary text-brand-secondary"
                              : "bg-white ring-slate-200 text-slate-600 hover:ring-slate-300"
                          }`}
                        >
                          <div className="font-bold text-sm">Desmanche Credenciado (CDV)</div>
                          <div className="opacity-80 font-normal mt-0.5">Peças usadas com nota e baixa</div>
                        </button>
                      </div>
                    </div>

                    {/* NOME DA LOJA */}
                    <div>
                      <label className="field-label" htmlFor="regName">
                        Nome Fantasia da Loja
                      </label>
                      <div className="relative">
                        <Building className="pointer-events-none absolute left-3.5 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400" />
                        <input
                          id="regName"
                          type="text"
                          required
                          className="field pl-10"
                          placeholder="Ex: AutoPeças Paulista & Oficina"
                          value={regName}
                          onChange={(e) => setRegName(e.target.value)}
                        />
                      </div>
                    </div>

                    {/* CNPJ / CPF */}
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                      <div>
                        <label className="field-label" htmlFor="regCnpj">
                          CNPJ ou CPF
                        </label>
                        <input
                          id="regCnpj"
                          type="text"
                          required
                          className="field"
                          placeholder="00.000.000/0001-00"
                          value={regCnpj}
                          onChange={(e) => setRegCnpj(e.target.value)}
                        />
                      </div>
                      <div>
                        <label className="field-label" htmlFor="regPhone">
                          WhatsApp da Loja
                        </label>
                        <div className="relative">
                          <Phone className="pointer-events-none absolute left-3.5 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400" />
                          <input
                            id="regPhone"
                            type="text"
                            required
                            className="field pl-10"
                            placeholder="(11) 99887-6655"
                            value={regPhone}
                            onChange={(e) => setRegPhone(e.target.value)}
                          />
                        </div>
                      </div>
                    </div>

                    {/* CIDADE / ESTADO */}
                    <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
                      <div className="md:col-span-2">
                        <label className="field-label" htmlFor="regCity">
                          Cidade
                        </label>
                        <div className="relative">
                          <MapPin className="pointer-events-none absolute left-3.5 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400" />
                          <input
                            id="regCity"
                            type="text"
                            required
                            className="field pl-10"
                            placeholder="Ex: São Paulo"
                            value={regCity}
                            onChange={(e) => setRegCity(e.target.value)}
                          />
                        </div>
                      </div>
                      <div>
                        <label className="field-label" htmlFor="regState">
                          UF
                        </label>
                        <select
                          id="regState"
                          className="field"
                          value={regState}
                          onChange={(e) => setRegState(e.target.value)}
                        >
                          {["SP", "RJ", "MG", "PR", "RS", "SC", "BA", "CE", "PE", "GO", "DF", "ES", "AM", "PA"].map((uf) => (
                            <option key={uf} value={uf}>
                              {uf}
                            </option>
                          ))}
                        </select>
                      </div>
                    </div>

                    {/* E-MAIL E SENHA */}
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                      <div>
                        <label className="field-label" htmlFor="regEmail">
                          E-mail de Contato
                        </label>
                        <input
                          id="regEmail"
                          type="email"
                          required
                          className="field"
                          placeholder="contato@sualoja.com.br"
                          value={regEmail}
                          onChange={(e) => setRegEmail(e.target.value)}
                        />
                      </div>
                      <div>
                        <label className="field-label" htmlFor="regPassword">
                          Crie uma Senha
                        </label>
                        <input
                          id="regPassword"
                          type="password"
                          required
                          className="field"
                          placeholder="Mínimo 6 caracteres"
                          value={regPassword}
                          onChange={(e) => setRegPassword(e.target.value)}
                        />
                      </div>
                    </div>

                    <button
                      type="submit"
                      disabled={regLoading}
                      className="btn-primary w-full py-3.5 text-base font-bold shadow-md hover:shadow-lg transition mt-2"
                    >
                      {regLoading ? (
                        "Criando cadastro..."
                      ) : (
                        <>
                          Cadastrar Minha Loja Grátis <ArrowRight className="h-4 w-4 ml-1" />
                        </>
                      )}
                    </button>
                  </>
                )}
              </form>
            )}
          </div>

          {/* BENEFÍCIOS */}
          <div className="mt-8 grid grid-cols-3 gap-4 text-center">
            <div className="p-3 bg-white rounded-xl ring-1 ring-slate-200">
              <ShieldCheck className="h-5 w-5 text-emerald-600 mx-auto mb-1" />
              <div className="text-xs font-semibold text-brand-ink">Catálogo Mestre</div>
              <div className="text-[10px] text-brand-muted">Sem cadastro duplicado</div>
            </div>
            <div className="p-3 bg-white rounded-xl ring-1 ring-slate-200">
              <Phone className="h-5 w-5 text-brand-primary mx-auto mb-1" />
              <div className="text-xs font-semibold text-brand-ink">WhatsApp Direto</div>
              <div className="text-[10px] text-brand-muted">Lead qualificado na hora</div>
            </div>
            <div className="p-3 bg-white rounded-xl ring-1 ring-slate-200">
              <Store className="h-5 w-5 text-brand-secondary mx-auto mb-1" />
              <div className="text-xs font-semibold text-brand-ink">Zero Comissão</div>
              <div className="text-[10px] text-brand-muted">Fique com 100% da venda</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
