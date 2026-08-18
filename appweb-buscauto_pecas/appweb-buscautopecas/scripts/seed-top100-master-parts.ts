// scripts/seed-top100-master-parts.ts — Seed Oficial dos 100 Itens da Curva A/B no Catálogo Mestre (master_parts)
import Database from "better-sqlite3";
import path from "node:path";
import fs from "node:fs";

// 10 Categorias Oficiais
const OFFICIAL_CATEGORIES = [
  { id: "cat-freios", name: "Freios e Componentes", slug: "freios", icon: "Disc" },
  { id: "cat-filtros", name: "Filtros e Óleos Lubrificantes", slug: "filtros", icon: "Filter" },
  { id: "cat-eletrica", name: "Sistema Elétrico e Ignição", slug: "eletrica", icon: "Zap" },
  { id: "cat-suspensao", name: "Suspensão e Direção", slug: "suspensao", icon: "Activity" },
  { id: "cat-transmissao", name: "Transmissão e Câmbio", slug: "transmissao", icon: "GitMerge" },
  { id: "cat-motor", name: "Motor e Componentes Internos", slug: "motor", icon: "Cpu" },
  { id: "cat-lataria", name: "Carroceria e Lataria", slug: "lataria", icon: "Shield" },
  { id: "cat-arrefecimento", name: "Sistema de Arrefecimento", slug: "arrefecimento", icon: "Snowflake" },
  { id: "cat-iluminacao", name: "Iluminação e Sinalização", slug: "iluminacao", icon: "Lightbulb" },
  { id: "cat-climatizacao", name: "Climatização / Ar-Condicionado", slug: "climatizacao", icon: "Wind" },
];

// Lista Oficial dos 100 Itens Mais Vendidos (Curva A e B) no Brasil
const TOP_100_PARTS = [
  // --- 1. FREIOS (cat-freios) ---
  { id: "mp-pastilha-freio-diant", name: "Pastilha de Freio Dianteira", manufacturer: "Fras-le", categoryId: "cat-freios", position: "DIANTEIRO", description: "Jogo de pastilhas de freio dianteiras cerâmicas de alta durabilidade" },
  { id: "mp-pastilha-freio-tras", name: "Pastilha de Freio Traseira", manufacturer: "Cobreq", categoryId: "cat-freios", position: "TRASEIRO", description: "Jogo de pastilhas de freio traseiras orgânicas silenciosas" },
  { id: "mp-disco-freio-diant", name: "Disco de Freio Ventilado Dianteiro", manufacturer: "Fremax", categoryId: "cat-freios", position: "DIANTEIRO", description: "Par de discos de freio dianteiros ventilados com tratamento antiferrugem" },
  { id: "mp-disco-freio-tras", name: "Disco de Freio Sólido Traseiro", manufacturer: "Fremax", categoryId: "cat-freios", position: "TRASEIRO", description: "Par de discos de freio traseiros sólidos balanceados de fábrica" },
  { id: "mp-cilindro-mestre-freio", name: "Cilindro Mestre de Freio", manufacturer: "Controil", categoryId: "cat-freios", position: "DIANTEIRO", description: "Cilindro mestre de freio duplo com reservatório integrado" },
  { id: "mp-cilindro-roda", name: "Cilindro de Roda do Freio Traseiro", manufacturer: "Controil", categoryId: "cat-freios", position: "TRASEIRO", description: "Cilindro hidráulico de roda traseira para sistema a tambor" },
  { id: "mp-sapata-freio", name: "Sapata / Lona de Freio Traseira", manufacturer: "Fras-le", categoryId: "cat-freios", position: "TRASEIRO", description: "Jogo de sapatas com lonas coladas de alta resistência térmica" },
  { id: "mp-tambor-freio", name: "Tambor de Freio Traseiro", manufacturer: "TRW", categoryId: "cat-freios", position: "TRASEIRO", description: "Par de tambores de freio traseiros de ferro fundido nodular" },
  { id: "mp-servofreio", name: "Servo Freio / Hidrovácuo", manufacturer: "Bosch", categoryId: "cat-freios", position: "DIANTEIRO", description: "Servo freio de assistência a vácuo para o sistema hidráulico" },
  { id: "mp-flexivel-freio-diant", name: "Flexível de Freio Dianteiro", manufacturer: "TRW", categoryId: "cat-freios", position: "DIANTEIRO", description: "Mangueira flexível reforçada com malha de nylon para freio dianteiro" },
  { id: "mp-flexivel-freio-tras", name: "Flexível de Freio Traseiro", manufacturer: "TRW", categoryId: "cat-freios", position: "TRASEIRO", description: "Mangueira flexível hidráulica de alta pressão para freio traseiro" },
  { id: "mp-fluido-freio-dot4", name: "Fluido de Freio DOT 4 (500ml)", manufacturer: "Vargas", categoryId: "cat-freios", position: "CENTRAL", description: "Fluido sintético de freio com alto ponto de ebulição DOT 4" },
  { id: "mp-sensor-abs", name: "Sensor de Velocidade / ABS", manufacturer: "Bosch", categoryId: "cat-freios", position: "AMBOS", description: "Sensor indutivo/magnético do sistema de freios antibloqueio (ABS)" },

  // --- 2. FILTROS E ÓLEOS (cat-filtros) ---
  { id: "mp-filtro-oleo", name: "Filtro de Óleo Lubrificante do Motor", manufacturer: "Tecfil", categoryId: "cat-filtros", position: "CENTRAL", description: "Filtro de óleo blindado de alta eficiência para proteção do motor" },
  { id: "mp-filtro-ar", name: "Filtro de Ar do Motor", manufacturer: "Mann-Filter", categoryId: "cat-filtros", position: "DIANTEIRO", description: "Elemento filtrante de ar dobrado em papel especial de microfibras" },
  { id: "mp-filtro-combustivel", name: "Filtro de Combustível (Gasolina/Etanol)", manufacturer: "Tecfil", categoryId: "cat-filtros", position: "INFERIOR", description: "Filtro de combustível em alumínio/plástico de alta capacidade de retenção" },
  { id: "mp-filtro-cabine", name: "Filtro de Ar-Condicionado / Cabine", manufacturer: "Fram", categoryId: "cat-filtros", position: "INTERNO", description: "Filtro antipólen e bactericida para purificação do ar interno da cabine" },
  { id: "mp-oleo-5w30", name: "Óleo de Motor Sintético 5W30 (1L)", manufacturer: "Castrol", categoryId: "cat-filtros", position: "CENTRAL", description: "Lubrificante 100% sintético de última geração para motores modernos" },
  { id: "mp-oleo-10w40", name: "Óleo de Motor Semi-Sintético 10W40 (1L)", manufacturer: "Mobil", categoryId: "cat-filtros", position: "CENTRAL", description: "Lubrificante semi-sintético de alta viscosidade para proteção contra desgaste" },
  { id: "mp-oleo-5w40", name: "Óleo de Motor Sintético 5W40 (1L)", manufacturer: "Shell", categoryId: "cat-filtros", position: "CENTRAL", description: "Óleo sintético recomendado para motores turbo e de alta performance" },
  { id: "mp-oleo-cambio-atf", name: "Óleo de Câmbio Automático ATF (1L)", manufacturer: "Teboil", categoryId: "cat-filtros", position: "CENTRAL", description: "Fluido de transmissão automática de baixa viscosidade Dexron VI / ATF" },

  // --- 3. SISTEMA ELÉTRICO E IGNIÇÃO (cat-eletrica) ---
  { id: "mp-vela-ignicao", name: "Jogo de Velas de Ignição Convencional", manufacturer: "NGK", categoryId: "cat-eletrica", position: "CENTRAL", description: "Jogo de 4 velas de ignição de níquel para rápida partida e queima eficiente" },
  { id: "mp-vela-iridium", name: "Jogo de Velas de Ignição Iridium", manufacturer: "NGK", categoryId: "cat-eletrica", position: "CENTRAL", description: "Jogo de velas de ignição com eletrodo de Iridium de durabilidade estendida" },
  { id: "mp-cabo-vela", name: "Jogo de Cabos de Ignição", manufacturer: "NGK", categoryId: "cat-eletrica", position: "CENTRAL", description: "Cabos de ignição de silicone resistivos à prova de fuga de corrente" },
  { id: "mp-bobina-ignicao", name: "Bobina de Ignição Individual", manufacturer: "Bosch", categoryId: "cat-eletrica", position: "CENTRAL", description: "Bobina de ignição tipo caneta/módulo de indução direta no cilindro" },
  { id: "mp-bomba-combustivel-refil", name: "Refil da Bomba de Combustível 3 Bar", manufacturer: "Bosch", categoryId: "cat-eletrica", position: "TRASEIRO", description: "Refil elétrico submerso da bomba de combustível para sistemas Flex" },
  { id: "mp-bico-injetor", name: "Bico Injetor de Combustível (Multi-ponto)", manufacturer: "Magneti Marelli", categoryId: "cat-eletrica", position: "CENTRAL", description: "Válvula injetora de combustível de alta precisão estequiométrica" },
  { id: "mp-sonda-lambda", name: "Sensor de Oxigênio / Sonda Lambda", manufacturer: "NTK", categoryId: "cat-eletrica", position: "INFERIOR", description: "Sonda lambda aquecida de 4 fios para medição de mistura ar/combustível" },
  { id: "mp-sensor-map", name: "Sensor MAP (Pressão Absoluta do Coletor)", manufacturer: "Bosch", categoryId: "cat-eletrica", position: "CENTRAL", description: "Sensor piezoelétrico de medição da pressão de admissão do motor" },
  { id: "mp-sensor-rotacao", name: "Sensor de Rotação do Virabrequim", manufacturer: "MTE-Thomson", categoryId: "cat-eletrica", position: "CENTRAL", description: "Sensor magnético/Hall de sincronismo de rotação do motor" },
  { id: "mp-tbi-corpo-borboleta", name: "Corpo de Borboleta Eletrônico (TBI)", manufacturer: "Magneti Marelli", categoryId: "cat-eletrica", position: "CENTRAL", description: "Corpo de aceleração motorizado eletrônico para controle de entrada de ar" },
  { id: "mp-bateria-60ah", name: "Bateria Automotiva 60Ah Livre de Manutenção", manufacturer: "Moura", categoryId: "cat-eletrica", position: "DIANTEIRO", description: "Bateria chumbo-ácido 12V 60Ah com selo Inmetro e garantia de 24 meses" },
  { id: "mp-bateria-efb", name: "Bateria Automotiva EFB 60Ah (Start-Stop)", manufacturer: "Heliar", categoryId: "cat-eletrica", position: "DIANTEIRO", description: "Bateria EFB de alta ciclagem projetada para veículos com Start-Stop" },
  { id: "mp-motor-partida", name: "Motor de Partida / Arranque 12V", manufacturer: "Bosch", categoryId: "cat-eletrica", position: "CENTRAL", description: "Motor elétrico de arranque com induzido e bendix acoplador" },
  { id: "mp-alternador-90a", name: "Alternador de Voltagem 90A", manufacturer: "Valeo", categoryId: "cat-eletrica", position: "DIANTEIRO", description: "Gerador alternador de energia elétrica 12V 90 Amperes com polia" },
  { id: "mp-regulador-voltagem", name: "Regulador de Voltagem do Alternador", manufacturer: "Bosch", categoryId: "cat-eletrica", position: "DIANTEIRO", description: "Módulo eletrônico regulador de tensão e escovas do alternador" },

  // --- 4. SUSPENSÃO E DIREÇÃO (cat-suspensao) ---
  { id: "mp-amortecedor-diant", name: "Amortecedor Dianteiro Pressurizado", manufacturer: "Monroe", categoryId: "cat-suspensao", position: "DIANTEIRO", description: "Amortecedor hidráulico pressurizado a gás para suspensão dianteira" },
  { id: "mp-amortecedor-tras", name: "Amortecedor Traseiro Pressurizado", manufacturer: "Cofap", categoryId: "cat-suspensao", position: "TRASEIRO", description: "Amortecedor turbo-gás de alta estabilidade para suspensão traseira" },
  { id: "mp-kit-batente-amortecedor", name: "Kit Batente e Coifa do Amortecedor", manufacturer: "Sampel", categoryId: "cat-suspensao", position: "AMBOS", description: "Kit de proteção com coifa sanfonada e batente de poliuretano" },
  { id: "mp-coxim-amortecedor-rolamento", name: "Coxim do Amortecedor Dianteiro com Rolamento", manufacturer: "Axios", categoryId: "cat-suspensao", position: "DIANTEIRO", description: "Coxim superior de apoio da coluna com rolamento de giro da direção" },
  { id: "mp-pivo-suspensao", name: "Pivô de Suspensão", manufacturer: "Nakata", categoryId: "cat-suspensao", position: "AMBOS", description: "Articulação esférica pivô de suspensão dianteira inferior" },
  { id: "mp-terminal-direcao", name: "Terminal de Direção", manufacturer: "Nakata", categoryId: "cat-suspensao", position: "AMBOS", description: "Ponteira articulada de direção ajustável de alta precisão" },
  { id: "mp-braco-axial", name: "Braço Axial de Direção / Articulação", manufacturer: "Viamar", categoryId: "cat-suspensao", position: "AMBOS", description: "Haste axial articulada para ligação da caixa de direção ao terminal" },
  { id: "mp-bandeja-suspensao", name: "Bandeja de Suspensão com Buchas e Pivô", manufacturer: "Nakata", categoryId: "cat-suspensao", position: "AMBOS", description: "Braço oscilante triangular inferior completo com buchas injetadas" },
  { id: "mp-bieleta-estabilizadora", name: "Bieleta da Barra Estabilizadora", manufacturer: "Cofap", categoryId: "cat-suspensao", position: "AMBOS", description: "Haste conectora da barra estabilizadora à coluna de suspensão" },
  { id: "mp-mola-suspensao", name: "Mola Helicoidal da Suspensão", manufacturer: "Fabrini", categoryId: "cat-suspensao", position: "AMBOS", description: "Par de molas helicoidais em aço especial temperado" },
  { id: "mp-cubo-roda-rolamento", name: "Cubo de Roda Dianteiro com Rolamento", manufacturer: "SKF", categoryId: "cat-suspensao", position: "DIANTEIRO", description: "Cubo de roda em aço forjado com rolamento duplo integrado" },
  { id: "mp-rolamento-roda", name: "Rolamento de Roda Traseiro", manufacturer: "FAG", categoryId: "cat-suspensao", position: "TRASEIRO", description: "Rolamento cônico/esférico selado de alta quilometragem" },
  { id: "mp-caixa-direcao-hidraulica", name: "Caixa de Direção Hidráulica", manufacturer: "TRW", categoryId: "cat-suspensao", position: "DIANTEIRO", description: "Mecanismo de cremalheira de direção hidráulica completo" },
  { id: "mp-bomba-direcao-hidraulica", name: "Bomba de Direção Hidráulica", manufacturer: "DHB", categoryId: "cat-suspensao", position: "DIANTEIRO", description: "Bomba de paletas rotativas para pressurização do fluido de direção" },

  // --- 5. TRANSMISSÃO E CÂMBIO (cat-transmissao) ---
  { id: "mp-junta-homocinetica-roda", name: "Junta Homocinética Lado Roda", manufacturer: "Spicer", categoryId: "cat-transmissao", position: "AMBOS", description: "Conjunto junta homocinética externa com coifa, abraçadeiras e graxa" },
  { id: "mp-junta-homocinetica-cambio", name: "Junta Homocinética Lado Câmbio / Tulipa", manufacturer: "Spicer", categoryId: "cat-transmissao", position: "CENTRAL", description: "Tulipa com trizeta interna para transmissão no lado do câmbio" },
  { id: "mp-semi-eixo", name: "Semi-Eixo de Transmissão Completo", manufacturer: "Nakata", categoryId: "cat-transmissao", position: "AMBOS", description: "Eixo de transmissão forjado montado com juntas homocinéticas" },
  { id: "mp-coifa-homocinetica", name: "Kit Coifa da Junta Homocinética", manufacturer: "Sabó", categoryId: "cat-transmissao", position: "AMBOS", description: "Coifa de borracha nitrílicaSanitizada com graxa de bissulfeto de molibdênio" },
  { id: "mp-kit-embreagem", name: "Kit de Embreagem (Platô, Disco e Rolamento)", manufacturer: "LUK", categoryId: "cat-transmissao", position: "CENTRAL", description: "Kit completo de embreagem com revestimento orgânico silencioso" },
  { id: "mp-atuador-embreagem", name: "Atuador Hidráulico de Embreagem", manufacturer: "FTE", categoryId: "cat-transmissao", position: "CENTRAL", description: "Cilindro atuador concêntrico hidráulico de desacoplamento de embreagem" },
  { id: "mp-cabo-embreagem", name: "Cabo de Embreagem com Regulagem Automática", manufacturer: "Fania", categoryId: "cat-transmissao", position: "CENTRAL", description: "Cabo de aço trançado revestido com catraca de autorregulagem" },
  { id: "mp-volante-motor", name: "Volante do Motor Bi-Massa", manufacturer: "LUK", categoryId: "cat-transmissao", position: "CENTRAL", description: "Volante de inércia amortecido bi-massa para absorção de vibrações" },
  { id: "mp-coxim-motor-diant", name: "Coxim Dianteiro do Motor", manufacturer: "Sampel", categoryId: "cat-transmissao", position: "DIANTEIRO", description: "Suporte coxim hidráulico/borracha de sustentação do motor" },
  { id: "mp-coxim-cambio", name: "Coxim do Câmbio / Limitador de Torque", manufacturer: "Sampel", categoryId: "cat-transmissao", position: "CENTRAL", description: "Coxim inferior de fixação da caixa de marchas ao chassi" },

  // --- 6. MOTOR E COMPONENTES (cat-motor) ---
  { id: "mp-correia-dentada", name: "Correia Dentada Sincronizadora do Motor", manufacturer: "Gates", categoryId: "cat-motor", position: "CENTRAL", description: "Correia de distribuição em borracha HNBR de alta resistência térmica" },
  { id: "mp-correia-poly-v", name: "Correia Auxiliar Poly-V / Estriada", manufacturer: "Dayco", categoryId: "cat-motor", position: "DIANTEIRO", description: "Correia mola-V de acionamento do alternador, bomba d'água e ar-condicionado" },
  { id: "mp-tensor-correia", name: "Tensor da Correia Dentada", manufacturer: "INA", categoryId: "cat-motor", position: "CENTRAL", description: "Polia tenciona automática para correto tencionamento da correia" },
  { id: "mp-kit-correia-dentada", name: "Kit Correia Dentada com Tensor", manufacturer: "Gates", categoryId: "cat-motor", position: "CENTRAL", description: "Kit completo de distribuição contendo correia sincronizadora e rolete tensionador" },
  { id: "mp-bomba-agua", name: "Bomba d'Água do Motor", manufacturer: "Urba", categoryId: "cat-arrefecimento", position: "CENTRAL", description: "Bomba centrífuga de arrefecimento de água com rotor metálico" },
  { id: "mp-valvula-termostatica", name: "Válvula Termostática com Carcaça", manufacturer: "Wahler", categoryId: "cat-arrefecimento", position: "CENTRAL", description: "Válvula termostática com elemento de cera expansiva e carcaça de alumínio" },
  { id: "mp-junta-cabecote", name: "Junta do Cabeçote em Aço Multilamimado (MLS)", manufacturer: "Sabó", categoryId: "cat-motor", position: "CENTRAL", description: "Junta de vedação de cabeçote em chapas de aço inox sobrepostas" },
  { id: "mp-jogo-juntas-motor", name: "Jogo de Juntas Completo do Motor", manufacturer: "Taranto", categoryId: "cat-motor", position: "CENTRAL", description: "Kit de vedações completas superiores e inferiores com retentores" },
  { id: "mp-retentor-virabrequim", name: "Retentor do Virabrequim (Lado Volante)", manufacturer: "Sabó", categoryId: "cat-motor", position: "TRASEIRO", description: "Retentor de óleos com lábio em PTFE resistente a altas temperaturas" },
  { id: "mp-pistao-aneis", name: "Jogo de Pistões de Motor com Anéis", manufacturer: "Mahle", categoryId: "cat-motor", position: "CENTRAL", description: "Pistões em liga de alumínio forjado com anéis de compressão e raspadores" },
  { id: "mp-bronzi-biela", name: "Jogo de Bronzinas de Biela", manufacturer: "Metal Leve", categoryId: "cat-motor", position: "CENTRAL", description: "Casquilhos de biela com camada trimetálica antifricção" },
  { id: "mp-tucho-hidraulico", name: "Tucho Hidráulico de Válvula", manufacturer: "INA", categoryId: "cat-motor", position: "CENTRAL", description: "Tucho hidráulico autorregulável de eliminação de folga de válvulas" },

  // --- 7. SISTEMA DE ARREFECIMENTO E CLIMATIZAÇÃO (cat-arrefecimento / cat-climatizacao) ---
  { id: "mp-radiador-agua", name: "Radiador de Água do Motor", manufacturer: "Visconde", categoryId: "cat-arrefecimento", position: "DIANTEIRO", description: "Radiador com colmeia de alumínio brasado e caixas plásticas" },
  { id: "mp-reservatorio-expansao", name: "Reservatório de Expansão de Água", manufacturer: "Gonel", categoryId: "cat-arrefecimento", position: "DIANTEIRO", description: "Vaso de expansão do radiador em polímero transparente de alta pressão" },
  { id: "mp-tampa-reservatorio", name: "Tampa do Reservatório de Expansão", manufacturer: "Click", categoryId: "cat-arrefecimento", position: "DIANTEIRO", description: "Tampa pressurizada com válvula de alívio de segurança (1.4 Bar)" },
  { id: "mp-eletroventilador", name: "Eletroventilador / Defletor do Radiador", manufacturer: "Bosch", categoryId: "cat-arrefecimento", position: "DIANTEIRO", description: "Conjunto motor elétrico, hélice e defletor de arrefecimento" },
  { id: "mp-aditivo-radiador", name: "Aditivo Concentrado para Radiador (1L)", manufacturer: "Radiex", categoryId: "cat-arrefecimento", position: "CENTRAL", description: "Fluido protetivo orgânico anticorrosivo para sistemas de arrefecimento" },
  { id: "mp-compressor-ar", name: "Compressor de Ar-Condicionado", manufacturer: "Denso", categoryId: "cat-climatizacao", position: "DIANTEIRO", description: "Compressor rotativo de pistões para gás refrigerante R134a" },
  { id: "mp-condensador-ar", name: "Condensador do Ar-Condicionado", manufacturer: "Mahle", categoryId: "cat-climatizacao", position: "DIANTEIRO", description: "Trocador de calor condensador de alumínio para ar-condicionado" },
  { id: "mp-evaporador-ar", name: "Evaporador do Ar-Condicionado", manufacturer: "Denso", categoryId: "cat-climatizacao", position: "INTERNO", description: "Radiador evaporador interno localizado sob a caixa de ar da cabine" },

  // --- 8. ILUMINAÇÃO E LATARIA (cat-iluminacao / cat-lataria) ---
  { id: "mp-farol-principal", name: "Farol Principal Foco Duplo", manufacturer: "Arteb", categoryId: "cat-iluminacao", position: "DIANTEIRO", description: "Conjunto óptico de farol dianteiro de alta refletividade com máscara preta/cromada" },
  { id: "mp-farol-milha", name: "Farol de Milha / Auxiliar de Neblina", manufacturer: "Orgus", categoryId: "cat-iluminacao", position: "DIANTEIRO", description: "Farol de neblina auxiliar com lente em vidro temperado" },
  { id: "mp-lanterna-traseira", name: "Lanterna Traseira Bicolor", manufacturer: "Fitam", categoryId: "cat-iluminacao", position: "TRASEIRO", description: "Lanterna traseira com lente acrílica resistente a raios UV" },
  { id: "mp-brake-light", name: "Brake Light / Luz de Freio Elevada", manufacturer: "Original", categoryId: "cat-iluminacao", position: "TRASEIRO", description: "Luz de freio traseira elevada com lâmpadas ou régua de LEDs" },
  { id: "mp-lampada-h4", name: "Lâmpada Halógena H4 12V 60/55W", manufacturer: "Osram", categoryId: "cat-iluminacao", position: "DIANTEIRO", description: "Lâmpada halógena H4 com duplo filamento para farol alto/baixo" },
  { id: "mp-lampada-h7-led", name: "Par de Lâmpadas H7 LED 6000K", manufacturer: "Philips", categoryId: "cat-iluminacao", position: "DIANTEIRO", description: "Lâmpadas LED H7 brancas de alta intensidade e baixo consumo" },
  { id: "mp-parachoque-diant", name: "Para-choque Dianteiro para Pintura", manufacturer: "DTS", categoryId: "cat-lataria", position: "DIANTEIRO", description: "Capa plástica lisa do para-choque dianteiro pronta para pintura" },
  { id: "mp-parachoque-tras", name: "Para-choque Traseiro", manufacturer: "DTS", categoryId: "cat-lataria", position: "TRASEIRO", description: "Capa do para-choque traseiro injetada em polipropileno de alto impacto" },
  { id: "mp-grade-dianteira", name: "Grade Dianteira do Radiador", manufacturer: "Bluetech", categoryId: "cat-lataria", position: "DIANTEIRO", description: "Grade frontal de arrefecimento com frisos cromados/pretos" },
  { id: "mp-capo-motor", name: "Capô do Motor em Aço Estampado", manufacturer: "RCD", categoryId: "cat-lataria", position: "DIANTEIRO", description: "Capô de cobertura do cofre do motor com primer anticorrosivo" },
  { id: "mp-paralama-diant", name: "Para-lama Dianteiro", manufacturer: "RCD", categoryId: "cat-lataria", position: "DIANTEIRO", description: "Chapa de para-lama dianteiro lateral pronta para preparação e pintura" },
  { id: "mp-retrovisor-eletrico", name: "Retrovisor Externo Elétrico com Pisca", manufacturer: "Metagal", categoryId: "cat-lataria", position: "AMBOS", description: "Conjunto retrovisor elétrico completo com capa e repetição de seta" },
  { id: "mp-parabrisa-diant", name: "Para-brisa Dianteiro Laminado", manufacturer: "Pilkington", categoryId: "cat-lataria", position: "DIANTEIRO", description: "Vidro para-brisa laminado verde com faixa degradê de proteção solar" },
  { id: "mp-palheta-limpador-par", name: "Jogo de Palhetas do Limpador de Para-brisa", manufacturer: "Bosch", categoryId: "cat-lataria", position: "DIANTEIRO", description: "Par de palhetas tipo Flat Blade flexíveis com rodo de borracha grafitada" },
  { id: "mp-maquina-vidro-eletrico", name: "Máquina de Vidro Elétrico sem Motor", manufacturer: "Zinvel", categoryId: "cat-lataria", position: "AMBOS", description: "Mecanismo de elevação de vidro elétrico de porta lateral" },
  { id: "mp-amortecedor-portamalas", name: "Amortecedor a Gás da Tampa do Porta-Malas", manufacturer: "Nakata", categoryId: "cat-lataria", position: "TRASEIRO", description: "Mola a gás de sustentação e abertura da tampa traseira/porta-malas" },
  { id: "mp-reservatorio-limpador", name: "Reservatório de Água do Limpador de Para-brisa", manufacturer: "Gonel", categoryId: "cat-lataria", position: "DIANTEIRO", description: "Reservatório plástico de lavador de para-brisa com bomba elétrica" }
];

function findD1SqliteFiles(baseDir: string): string[] {
  const sqliteFiles: string[] = [];
  if (!fs.existsSync(baseDir)) return sqliteFiles;

  function walk(dir: string) {
    const files = fs.readdirSync(dir);
    for (const file of files) {
      const fullPath = path.join(dir, file);
      const stat = fs.statSync(fullPath);
      if (stat.isDirectory()) {
        walk(fullPath);
      } else if ((file.endsWith(".sqlite") || file.endsWith(".db")) && !file.includes("metadata")) {
        sqliteFiles.push(fullPath);
      }
    }
  }

  walk(baseDir);
  return sqliteFiles;
}

export function seedTop100MasterParts(dbPath: string) {
  const db = new Database(dbPath);

  const tableCheck = db.prepare(`SELECT name FROM sqlite_master WHERE type='table' AND name='master_parts'`).get();
  if (!tableCheck) {
    db.close();
    return;
  }

  console.log(`\n====================================================================`);
  console.log(`🚀 EXECUÇÃO DO SEED OFICIAL DOS 100 ITENS CURVA A/B (master_parts):`);
  console.log(`📁 Banco Local: ${dbPath}`);
  console.log(`====================================================================\n`);

  db.pragma("foreign_keys = OFF");

  let categoriesEnsured = 0;
  let partsInserted = 0;

  try {
    // 1. Mapeia categorias existentes por slug
    const existingCats = db.prepare(`SELECT id, slug FROM categories`).all() as { id: string; slug: string }[];
    const catMapBySlug = new Map<string, string>();
    existingCats.forEach((c) => catMapBySlug.set(c.slug.toLowerCase(), c.id));

    const insertCatStmt = db.prepare(`
      INSERT INTO categories (id, name, slug, icon, created_at)
      VALUES (?, ?, ?, ?, ?)
      ON CONFLICT(slug) DO UPDATE SET name = excluded.name, icon = excluded.icon
    `);

    const now = Date.now();
    for (const cat of OFFICIAL_CATEGORIES) {
      insertCatStmt.run(cat.id, cat.name, cat.slug, cat.icon, now);
      categoriesEnsured++;
    }

    // Recarrega o mapa de categorias atualizado
    const updatedCats = db.prepare(`SELECT id, slug FROM categories`).all() as { id: string; slug: string }[];
    updatedCats.forEach((c) => catMapBySlug.set(c.slug.toLowerCase(), c.id));

    console.log(`✅ Step 1: ${categoriesEnsured} Categorias oficiais verificadas e ativas.`);

    // 2. Inserção / Atualização dos 100 itens da Curva A/B no master_parts
    const insertPartStmt = db.prepare(`
      INSERT INTO master_parts (id, name, manufacturer, manufacturer_code, category_id, position, description, created_at, updated_at)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
      ON CONFLICT(id) DO UPDATE SET 
        name = excluded.name,
        manufacturer = excluded.manufacturer,
        category_id = excluded.category_id,
        position = excluded.position,
        description = excluded.description,
        updated_at = excluded.updated_at
    `);

    for (const part of TOP_100_PARTS) {
      const targetSlug = part.categoryId.replace("cat-", "");
      const resolvedCatId = catMapBySlug.get(targetSlug) || catMapBySlug.get("motor") || part.categoryId;
      const oemCode = `CURVA-AB-${part.id.toUpperCase()}`;

      insertPartStmt.run(
        part.id,
        part.name,
        part.manufacturer,
        oemCode,
        resolvedCatId,
        part.position,
        part.description,
        now,
        now
      );
      partsInserted++;
    }
    console.log(`✅ Step 2: ${partsInserted} Peças Mestre Canônicas da Curva A/B gravadas com sucesso.`);

    // 3. Contagem Total Final de Peças no D1
    const totalParts = db.prepare(`SELECT COUNT(*) as total FROM master_parts`).get() as { total: number };
    const totalCats = db.prepare(`SELECT COUNT(*) as total FROM categories`).get() as { total: number };

    console.log(`\n====================================================================`);
    console.log(`📊 RELATÓRIO FINAL DO SEED TOP 100 DA CURVA A/B NO D1 LOCAL:`);
    console.log(`====================================================================`);
    console.log(`- Categorias Oficiais Ativas: ${totalCats.total}`);
    console.log(`- Peças da Curva A/B Inseridas/Atualizadas: ${partsInserted}`);
    console.log(`- TOTAL DE PEÇAS MESTRE CANÔNICAS ATIVAS NO D1: ${totalParts.total}`);
    console.log(`====================================================================\n`);

  } catch (err) {
    console.error("Erro na execução do Seed Top 100 Curva A/B:", err);
  } finally {
    db.pragma("foreign_keys = ON");
    db.close();
  }
}

async function main() {
  const rootDir = path.resolve(__dirname, "..");
  const wranglerDir = path.join(rootDir, ".wrangler");
  const sqliteFiles = findD1SqliteFiles(wranglerDir);

  if (sqliteFiles.length === 0) {
    console.log("Nenhum banco SQLite de D1 encontrado em .wrangler/state.");
    return;
  }

  for (const file of sqliteFiles) {
    seedTop100MasterParts(file);
  }
}

if (require.main === module) {
  main();
}
