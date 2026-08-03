import React, { useMemo, useState } from "react";
import {
  ArrowRight, BadgeCheck, CarFront, ChevronDown, Clock3, Gauge,
  LocateFixed, MapPin, Menu, MessageCircle, PackageSearch, Search,
  ShieldCheck, SlidersHorizontal, Sparkles, Store, Tag, X,
} from "lucide-react";

const vehicles = {
  Fiat: {
    Palio: ["2012 · 1.0 8V Fire", "2014 · 1.4 8V Fire", "2017 · 1.0 Fire"],
    Uno: ["2013 · 1.0 Fire", "2018 · 1.3 Firefly"],
    Strada: ["2016 · 1.4 Fire", "2022 · 1.3 Firefly"],
  },
  Volkswagen: {
    Gol: ["2014 · 1.0 MPI", "2018 · 1.6 MSI"],
    Saveiro: ["2016 · 1.6 MSI", "2021 · 1.6 MSI"],
    Polo: ["2020 · 1.0 MPI", "2023 · 1.0 TSI"],
  },
  Chevrolet: {
    Onix: ["2018 · 1.0 SPE/4", "2022 · 1.0 Turbo"],
    Corsa: ["2009 · 1.4 Econoflex"],
    S10: ["2019 · 2.8 Turbo Diesel"],
  },
};

const offers = [
  { store: "Mundial Autopeças", place: "Centro, Rio de Janeiro", km: 1.2, price: 119.9, type: "Nova", stock: 4, verified: true },
  { store: "Auto Peças Carioca", place: "São Cristóvão, Rio de Janeiro", km: 3.8, price: 124.5, type: "Nova", stock: 7, verified: true },
  { store: "Desmonte Legal RJ", place: "Benfica, Rio de Janeiro", km: 5.1, price: 78, type: "Usada", stock: 2, verified: true },
];

function Logo() {
  return <a className="logo" href="#" aria-label="BuscAutopeças, início">
    <span className="logo-mark"><CarFront size={25} strokeWidth={2.4}/></span>
    <span>Busc<span>Autopeças</span></span>
  </a>;
}

function Header({ onPartner }) {
  const [open, setOpen] = useState(false);
  return <header>
    <div className="nav shell">
      <Logo />
      <nav className={open ? "open" : ""}>
        <a href="#como-funciona">Como funciona</a>
        <a href="#vantagens">Para compradores</a>
        <button className="nav-partner" onClick={onPartner}>Área do lojista</button>
      </nav>
      <button className="partner-btn desktop" onClick={onPartner}><Store size={17}/> Sou lojista</button>
      <button className="menu-btn" aria-label="Abrir menu" onClick={() => setOpen(!open)}>{open ? <X/> : <Menu/>}</button>
    </div>
  </header>;
}

function VehicleSelect({ label, value, disabled, children, onChange }) {
  return <label className={`select-box ${disabled ? "disabled" : ""}`}>
    <span>{label}</span>
    <div>
      <select value={value} disabled={disabled} onChange={onChange}>{children}</select>
      <ChevronDown size={17}/>
    </div>
  </label>;
}

function SearchPanel({ onSearch }) {
  const [mode, setMode] = useState("vehicle");
  const [brand, setBrand] = useState("");
  const [model, setModel] = useState("");
  const [year, setYear] = useState("");
  const [term, setTerm] = useState("");
  const models = brand ? Object.keys(vehicles[brand]) : [];
  const years = brand && model ? vehicles[brand][model] : [];
  const ready = mode === "code" ? term.trim().length > 2 : Boolean(brand && model && year);
  const submit = (e) => {
    e.preventDefault();
    if (!ready) return;
    onSearch({ mode, brand, model, year, term });
  };
  return <div className="search-card">
    <div className="tabs">
      <button className={mode === "vehicle" ? "active" : ""} onClick={() => setMode("vehicle")}><CarFront size={18}/> Por veículo</button>
      <button className={mode === "code" ? "active" : ""} onClick={() => setMode("code")}><PackageSearch size={18}/> Por peça ou código</button>
    </div>
    <form onSubmit={submit}>
      {mode === "vehicle" ? <div className="select-grid">
        <VehicleSelect label="Montadora" value={brand} onChange={(e) => {setBrand(e.target.value); setModel(""); setYear("");}}>
          <option value="">Selecione a marca</option>{Object.keys(vehicles).map(x => <option key={x}>{x}</option>)}
        </VehicleSelect>
        <VehicleSelect label="Modelo" value={model} disabled={!brand} onChange={(e) => {setModel(e.target.value); setYear("");}}>
          <option value="">Selecione o modelo</option>{models.map(x => <option key={x}>{x}</option>)}
        </VehicleSelect>
        <VehicleSelect label="Ano e motor" value={year} disabled={!model} onChange={(e) => setYear(e.target.value)}>
          <option value="">Selecione a versão</option>{years.map(x => <option key={x}>{x}</option>)}
        </VehicleSelect>
      </div> : <label className="text-search">
        <span>Nome ou código original da peça</span>
        <div><Search size={20}/><input autoFocus value={term} onChange={e => setTerm(e.target.value)} placeholder="Ex.: pastilha de freio ou 46758410"/></div>
      </label>}
      <button className="search-submit" disabled={!ready}><Search size={20}/> Buscar peças</button>
    </form>
    <p className="search-hint"><ShieldCheck size={16}/> Consulte preços sem cadastro. Seus dados ficam com você.</p>
  </div>;
}

function Results({ query, onBack }) {
  const [condition, setCondition] = useState("Todas");
  const [sort, setSort] = useState("price");
  const list = useMemo(() => offers
    .filter(x => condition === "Todas" || x.type === condition)
    .sort((a,b) => sort === "price" ? a.price-b.price : a.km-b.km), [condition, sort]);
  const car = query.mode === "vehicle" ? `${query.brand} ${query.model} · ${query.year}` : `Busca por “${query.term}”`;
  return <main className="results-page">
    <div className="shell">
      <button className="back-link" onClick={onBack}>← Nova busca</button>
      <div className="result-head">
        <div><span className="eyebrow">RESULTADO DA BUSCA</span><h1>Peças encontradas</h1><p><CarFront size={17}/>{car}</p></div>
        <div className="location-chip"><LocateFixed size={18}/><span><small>Sua região</small>Rio de Janeiro, RJ</span></div>
      </div>
      <section className="product">
        <div className="product-visual"><div className="rotor"></div></div>
        <div className="product-info">
          <span className="category">FRENAGEM</span>
          <h2>Pastilha de Freio Dianteira</h2>
          <p className="sku">Código original: <strong>46758410</strong> · Fabricante: <strong>Fras-le</strong></p>
          <div className="compat"><BadgeCheck size={18}/><span><strong>Compatibilidade confirmada</strong><br/>Esta peça serve no veículo selecionado.</span></div>
        </div>
      </section>
      <div className="offers-title">
        <div><h2>{list.length} ofertas perto de você</h2><p>Preços informados pelas lojas parceiras</p></div>
        <div className="filters">
          {["Todas","Nova","Usada"].map(x => <button key={x} className={condition === x ? "active" : ""} onClick={() => setCondition(x)}>{x}</button>)}
          <label><SlidersHorizontal size={15}/><select value={sort} onChange={e=>setSort(e.target.value)}><option value="price">Menor preço</option><option value="distance">Mais perto</option></select></label>
        </div>
      </div>
      <div className="offer-list">{list.map((o,i) => <article className="offer" key={o.store}>
        <div className="ranking">{i+1}</div>
        <div className="store-icon"><Store size={24}/></div>
        <div className="store-data"><h3>{o.store} {o.verified && <BadgeCheck size={16}/>}</h3><p><MapPin size={15}/>{o.place} · <strong>{o.km} km</strong></p><span className={`condition ${o.type.toLowerCase()}`}>{o.type}</span><span className="stock">• {o.stock} em estoque</span></div>
        <div className="price"><small>a partir de</small><strong>{o.price.toLocaleString("pt-BR",{style:"currency",currency:"BRL"})}</strong><span>Atualizado hoje</span></div>
        <a className="whatsapp" target="_blank" rel="noreferrer" href={`https://wa.me/5521999998888?text=${encodeURIComponent(`Olá! Vi no BuscAutopeças a Pastilha de Freio por ${o.price.toLocaleString("pt-BR",{style:"currency",currency:"BRL"})}. Ainda está disponível?`)}`}><MessageCircle size={19}/> Chamar no WhatsApp</a>
      </article>)}</div>
      <p className="disclaimer">Confirme preço, aplicação e disponibilidade diretamente com a loja antes de se deslocar.</p>
    </div>
  </main>;
}

function Home({ onSearch }) {
  return <main>
    <section className="hero">
      <div className="glow one"></div><div className="glow two"></div>
      <div className="shell hero-inner">
        <div className="hero-copy">
          <span className="pill"><Sparkles size={15}/> Simples, rápido e perto de você</span>
          <h1>A peça certa.<br/><em>Sem perder tempo.</em></h1>
          <p>Compare preços de autopeças novas e usadas nas melhores lojas da sua região.</p>
          <div className="proof"><span><BadgeCheck size={18}/> Lojas verificadas</span><span><LocateFixed size={18}/> Ofertas locais</span><span><Tag size={18}/> Preços reais</span></div>
        </div>
        <SearchPanel onSearch={onSearch}/>
      </div>
    </section>
    <section className="logos shell" aria-label="Marcas disponíveis"><p>ENCONTRE PEÇAS PARA AS PRINCIPAIS MARCAS</p><div><strong>FIAT</strong><strong>Volkswagen</strong><strong>CHEVROLET</strong><strong>TOYOTA</strong><strong>HYUNDAI</strong><strong>RENAULT</strong></div></section>
    <section id="como-funciona" className="how shell">
      <span className="eyebrow">SEM COMPLICAÇÃO</span><h2>Da busca ao balcão em poucos minutos</h2><p className="section-sub">Você encontra, compara e fala direto com a loja. Sem intermediários.</p>
      <div className="steps">
        <article><span className="step-num">01</span><div className="step-icon"><CarFront/></div><h3>Escolha seu veículo</h3><p>Informe marca, modelo e ano para ver apenas peças compatíveis.</p></article>
        <ArrowRight className="step-arrow"/>
        <article><span className="step-num">02</span><div className="step-icon"><Search/></div><h3>Compare as ofertas</h3><p>Veja preços, condições e distância das lojas próximas.</p></article>
        <ArrowRight className="step-arrow"/>
        <article><span className="step-num">03</span><div className="step-icon"><MessageCircle/></div><h3>Fale com a loja</h3><p>Confirme a peça pelo WhatsApp e retire direto no balcão.</p></article>
      </div>
    </section>
    <section id="vantagens" className="benefits">
      <div className="shell benefit-grid">
        <div><span className="eyebrow light">FEITO PARA QUEM PRECISA RESOLVER</span><h2>Menos procura.<br/>Mais estrada.</h2><p>Chega de telefonar para dezenas de lojas ou comprar a peça errada. Nossa busca cruza o seu veículo com um catálogo padronizado.</p><div className="mini-stats"><span><strong>3 cliques</strong><small>para buscar</small></span><span><strong>100%</strong><small>gratuito</small></span><span><strong>Direto</strong><small>com a loja</small></span></div></div>
        <div className="benefit-card"><div><Gauge/><span><strong>Busca precisa</strong><small>Compatibilidade por veículo</small></span></div><div><MapPin/><span><strong>Perto de você</strong><small>Lojas ordenadas por distância</small></span></div><div><Clock3/><span><strong>Estoque atualizado</strong><small>Saiba onde tem antes de sair</small></span></div><div><ShieldCheck/><span><strong>Compra mais segura</strong><small>Lojistas e desmanches verificados</small></span></div></div>
      </div>
    </section>
  </main>;
}

function PartnerModal({ onClose }) {
  return <div className="modal-bg" onMouseDown={onClose}><div className="modal" onMouseDown={e=>e.stopPropagation()}><button className="modal-close" onClick={onClose}><X/></button><div className="modal-icon"><Store/></div><span className="eyebrow">ÁREA DO LOJISTA</span><h2>Venda para quem já está procurando.</h2><p>Cadastre seu estoque, informe seus preços e receba clientes direto no WhatsApp.</p><label>E-mail da loja<input type="email" placeholder="voce@sualoja.com.br"/></label><label>Senha<input type="password" placeholder="••••••••"/></label><button className="login-btn">Entrar no painel <ArrowRight size={18}/></button><small>Ainda não é parceiro? <a href="mailto:parceiros@buscautopecas.com.br">Quero cadastrar minha loja</a></small></div></div>;
}

export default function App() {
  const [query, setQuery] = useState(null);
  const [partner, setPartner] = useState(false);
  return <>
    <Header onPartner={()=>setPartner(true)}/>
    {query ? <Results query={query} onBack={()=>setQuery(null)}/> : <Home onSearch={setQuery}/>}
    {!query && <footer><div className="shell"><Logo/><p>Encontre a peça certa, na loja certa.</p><span>© 2026 BuscAutopeças</span></div></footer>}
    {partner && <PartnerModal onClose={()=>setPartner(false)}/>}
  </>;
}
