// Relatório Policial GNR - Com personalidade e autenticidade
// Documento para impressão - Acto 1

#set document(
  title: "Relatório de Ocorrência - GNR",
  author: "Comando Territorial de Lisboa"
)

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
  background: {
    // Mancha de café subtil no canto superior direito
    place(top + right, dx: -3cm, dy: 4cm,
      circle(radius: 1.2cm, fill: rgb(139, 90, 43, 15), stroke: none)
    )
    place(top + right, dx: -3.3cm, dy: 4.2cm,
      circle(radius: 0.8cm, fill: rgb(139, 90, 43, 10), stroke: none)
    )
    // Pequena mancha no meio-esquerda
    place(left + horizon, dx: 1cm, dy: 3cm,
      circle(radius: 0.5cm, fill: rgb(139, 90, 43, 8), stroke: none)
    )
  }
)

#set text(
  font: "DejaVu Serif",
  size: 10.5pt,
  lang: "pt"
)

#set par(
  justify: true,
  leading: 0.65em
)

// Função para carimbo
#let carimbo(texto, cor: red, rotacao: -12deg, tamanho: 14pt) = {
  rotate(rotacao,
    box(
      stroke: 2.5pt + cor,
      inset: 8pt,
      radius: 3pt,
      text(fill: cor, weight: "bold", size: tamanho, tracking: 0.1em)[#texto]
    )
  )
}

// Função para anotação manuscrita
#let manuscrito(texto, cor: rgb(30, 30, 120)) = {
  text(font: "DejaVu Sans", style: "italic", fill: cor, size: 9pt)[#texto]
}

// Função para anotação na margem
#let margem(texto) = {
  place(right, dx: 2.2cm,
    text(font: "DejaVu Sans", style: "italic", fill: rgb(30, 30, 120), size: 8pt)[#texto]
  )
}

// ============ CABEÇALHO OFICIAL GNR ============

#align(center)[
  #block(width: 100%, stroke: (bottom: 1pt + black), inset: (bottom: 8pt))[
    #grid(
      columns: (1fr, 3fr, 1fr),
      align: (left, center, right),

      // Esquerda - Brasão simulado
      box(width: 2cm, height: 2cm, stroke: 1pt + black, inset: 4pt)[
        #align(center + horizon)[
          #text(size: 7pt, weight: "bold")[
            GUARDA\
            NACIONAL\
            REPUBLICANA
          ]
        ]
      ],

      // Centro - Texto oficial
      [
        #text(size: 8pt)[MINISTÉRIO DA ADMINISTRAÇÃO INTERNA]\
        #v(2pt)
        #text(size: 14pt, weight: "bold")[GUARDA NACIONAL REPUBLICANA]\
        #v(2pt)
        #text(size: 10pt)[Comando Territorial de Lisboa]\
        #text(size: 9pt)[Destacamento Territorial de Sintra]\
        #v(2pt)
        #text(size: 8pt, style: "italic")[Posto Territorial de Sintra]
      ],

      // Direita - Carimbo CONFIDENCIAL
      carimbo("CONFIDENCIAL", rotacao: -8deg, tamanho: 11pt)
    )
  ]
]

#v(0.5cm)

// ============ NÚMERO DE PROCESSO ============

#grid(
  columns: (1fr, 1fr),

  align(left)[
    #box(stroke: 1pt + black, inset: 6pt)[
      #text(size: 8pt)[
        *NUIPC:* 2847/24.9PELSB\
        *Proc. Interno:* PT-SNT-2024-002847\
        *Classificação:* #text(fill: red)[*RESERVADO*]
      ]
    ]
  ],

  align(right)[
    #text(size: 9pt)[
      *Data de registo:* 07/12/2024\
      *Hora:* 06:23\
      *Turno:* Madrugada (00h-08h)
    ]
  ]
)

#v(0.6cm)

// ============ TÍTULO ============

#align(center)[
  #block(fill: rgb(240, 240, 240), width: 100%, inset: 10pt)[
    #text(size: 13pt, weight: "bold")[
      RELATÓRIO DE OCORRÊNCIA
    ]
    #v(3pt)
    #text(size: 10pt)[
      Auto de Notícia — Morte Suspeita (×3)
    ]
  ]
]

#v(0.4cm)

// Carimbo de arquivamento no canto
#place(top + right, dx: 0.5cm, dy: 6cm,
  carimbo("ARQUIVADO", cor: rgb(100, 100, 100), rotacao: -15deg, tamanho: 12pt)
)

// ============ IDENTIFICAÇÃO DA OCORRÊNCIA ============

#text(weight: "bold", size: 11pt)[1. IDENTIFICAÇÃO DA OCORRÊNCIA]
#v(0.2cm)

#table(
  columns: (4cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Tipo de ocorrência:*], [Morte suspeita — Possível homicídio (×3)],
  [*Data dos factos:*], [7 de Dezembro de 2024],
  [*Hora provável:*], [Entre 03:00 e 04:00 #h(1cm) #manuscrito("03:33? — os 3 relógios")],
  [*Local:*], [Orfanato Nossa Senhora das Dores],
  [*Morada:*], [Estrada da Serra, n.º 47, Sintra],
  [*Coordenadas:*], [38°47'23"N, 9°23'45"W],
  [*Comunicante:*], [Irmã Augusta Pereira (funcionária)],
  [*Contacto:*], [912 345 678],
)

#margem[verificar\ncoincidência\nde horas!]

#v(0.5cm)

// ============ DESLOCAÇÃO AO LOCAL ============

#text(weight: "bold", size: 11pt)[2. DESLOCAÇÃO AO LOCAL]
#v(0.2cm)

#table(
  columns: (4cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Chamada recebida:*], [05:47 (Central de Sintra)],
  [*Patrulha destacada:*], [Patrulha 7-Sintra (Cabo Rodrigues, Guarda Silva)],
  [*Hora de saída:*], [05:58],
  [*Hora de chegada:*], [06:14],
  [*Condições atmosféricas:*], [Nevoeiro denso, visibilidade reduzida (\<50m)],
)

#v(0.5cm)

// ============ DESCRIÇÃO DOS FACTOS ============

#text(weight: "bold", size: 11pt)[3. DESCRIÇÃO DOS FACTOS]
#v(0.2cm)

#block(inset: (left: 0.5cm))[
À chegada ao local, a patrulha foi recebida por Irmã Augusta Pereira, 61 anos, visivelmente perturbada. A mesma declarou ter descoberto os corpos das três vítimas durante a ronda matinal das 05:30.

#margem[tremores\nincapaz de\nolhar p/ nós]

#v(0.3cm)
O edifício apresentava-se em silêncio absoluto. #underline[Todas as portas exteriores encontravam-se trancadas pelo interior.] Não foram detectados sinais de arrombamento ou entrada forçada.

#v(0.3cm)
#manuscrito[" Como entraram? Janelas também fechadas. "]

#v(0.3cm)
Foram identificados três corpos em divisões distintas do edifício:
]

#v(0.4cm)

// ============ VÍTIMAS ============

#text(weight: "bold", size: 11pt)[4. IDENTIFICAÇÃO DAS VÍTIMAS]
#v(0.2cm)

// VÍTIMA 1
#block(stroke: (left: 3pt + rgb(180, 0, 0)), inset: (left: 10pt, y: 5pt))[
  *VÍTIMA 1 — Irmã Maria da Conceição Ferreira dos Santos*

  #table(
    columns: (3.5cm, 1fr),
    stroke: none,
    inset: 3pt,

    [Idade:], [68 anos],
    [Função:], [Directora do orfanato (desde 1985)],
    [Local do corpo:], [Capela — junto ao altar-mor],
    [Posição:], [Decúbito dorsal, braços em cruz],
    [Obs. preliminar:], [#text(fill: rgb(150,0,0))[Múltiplas lesões traumáticas de origem indeterminada]],
  )

  #text(size: 9pt, style: "italic")[
    Nota: Portas da capela trancadas pelo interior. Chave encontrada no bolso da vítima.
  ]
]

#margem[impossível —\ncomo?!]

#v(0.4cm)

// VÍTIMA 2
#block(stroke: (left: 3pt + rgb(180, 0, 0)), inset: (left: 10pt, y: 5pt))[
  *VÍTIMA 2 — Irmã Maria Beatriz da Assunção Figueiredo*

  #table(
    columns: (3.5cm, 1fr),
    stroke: none,
    inset: 3pt,

    [Idade:], [72 anos],
    [Função:], [Responsável pela disciplina (desde 1993)],
    [Local do corpo:], [Cozinha — sentada numa cadeira],
    [Posição:], [Sentada, cabeça tombada para trás],
    [Obs. preliminar:], [#text(fill: rgb(150,0,0))[Aparência de queimaduras internas — pele intacta]],
  )

  #text(size: 9pt, style: "italic")[
    Nota: Forte odor a carne queimada. Fogão desligado. Nenhuma fonte de calor identificada.
  ]
]

#place(right, dx: 2.3cm,
  rotate(-5deg, text(font: "DejaVu Sans", style: "italic", fill: rgb(150, 30, 30), size: 9pt, weight: "bold")[???])
)

#v(0.4cm)

// VÍTIMA 3
#block(stroke: (left: 3pt + rgb(180, 0, 0)), inset: (left: 10pt, y: 5pt))[
  *VÍTIMA 3 — Irmã Maria do Carmo Rodrigues Oliveira*

  #table(
    columns: (3.5cm, 1fr),
    stroke: none,
    inset: 3pt,

    [Idade:], [65 anos],
    [Função:], [Administração / Registos (desde 2001)],
    [Local do corpo:], [Lavandaria — ajoelhada junto a balde],
    [Posição:], [De joelhos, cabeça submersa em balde],
    [Obs. preliminar:], [#text(fill: rgb(150,0,0))[Aparente afogamento — balde continha apenas ±11cm de água]],
  )

  #text(size: 9pt, style: "italic")[
    Nota: Porta trancada pelo interior. Marcas visíveis nos ombros — #underline[aparentam ser de mãos pequenas (criança?).]
  ]
]

#margem[mãos de\nCRIANÇA??]

#v(0.6cm)

// ============ TESTEMUNHAS ============

#text(weight: "bold", size: 11pt)[5. TESTEMUNHAS IDENTIFICADAS]
#v(0.2cm)

#table(
  columns: (3cm, 4cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 5pt,
  align: left,

  [*Nome*], [*Função*], [*Observações*],
  [Augusta Pereira], [Funcionária], [Descobriu os corpos. Em choque.],
  [Padre António Silva], [Capelão], [Chamado às 06:45. Último a ver vítimas vivas (jantar, 20:30).],
  [Dr. Henrique Bastos], [Médico local], [Chamado às 07:00. #manuscrito["nunca vi nada assim"]],
  [Matilde Soares], [Funcionária], [Cozinheira. Trabalha há 40 anos no local.],
  [Rosa Vidal], [Funcionária], [Auxiliar. Recusou-se a entrar após ver corpos.],
)

#v(0.5cm)

// ============ DILIGÊNCIAS ============

#text(weight: "bold", size: 11pt)[6. DILIGÊNCIAS EFECTUADAS]
#v(0.2cm)

#block(inset: (left: 0.5cm))[
  #set enum(numbering: "a)")
  + Isolamento e preservação do local
  + Contacto com Polícia Judiciária de Lisboa (07:15)
  + Chegada da PJ ao local (09:30)
  + Recolha fotográfica preliminar (GNR)
  + Identificação de testemunhas
  + Recolha de declarações preliminares
  + Guarda ao perímetro até chegada PJ
]

#v(0.5cm)

// ============ OBSERVAÇÕES ============

#text(weight: "bold", size: 11pt)[7. OBSERVAÇÕES ADICIONAIS]
#v(0.2cm)

#block(fill: rgb(255, 255, 230), inset: 10pt, stroke: 0.5pt + rgb(200, 200, 150))[
  #text(size: 10pt)[
    Durante a inspecção preliminar, foram detectadas as seguintes anomalias:

    #v(0.2cm)
    #set list(marker: "—")
    - #underline[Os três relógios de parede] (capela, cozinha, lavandaria) encontravam-se parados às *03:33*
    - Todas as portas dos compartimentos onde foram encontrados os corpos estavam #underline[trancadas pelo interior]
    - Não foram encontradas chaves em falta — todas no interior dos compartimentos
    - Nenhum sinal de luta ou resistência em qualquer das vítimas
    - Detectores de fumo não dispararam apesar do "odor a queimado"
    - Janelas fechadas e trancadas em todo o edifício

    #v(0.3cm)
    #text(style: "italic")[
      O signatário regista que, em 23 anos de serviço, nunca presenciou circunstâncias semelhantes. A ausência de explicação racional para os factos descritos é, neste momento, total.
    ]
  ]
]

#margem[falar c/\nComandante]

#v(0.3cm)

#block(inset: (left: 0.5cm))[
  #manuscrito[" 3 mortes. 3 relógios parados. 03:33. 3 portas trancadas. Coincidência? "]
]

#v(0.6cm)

// ============ ENCAMINHAMENTO ============

#text(weight: "bold", size: 11pt)[8. ENCAMINHAMENTO]
#v(0.2cm)

#table(
  columns: (4cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Entidade competente:*], [Polícia Judiciária — Directoria de Lisboa],
  [*Comunicação:*], [07:15 (telefónica) / 07:45 (formal)],
  [*Inspector designado:*], [Inspector-Chefe Carlos Mendonça],
  [*Chegada ao local:*], [09:30],
  [*Transferência de competência:*], [10:00],
)

#v(0.8cm)

// ============ ASSINATURA ============

#line(length: 100%, stroke: 0.5pt + gray)

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),

  // Assinatura do agente
  align(center)[
    #v(0.5cm)
    #text(style: "italic", size: 11pt)[José Manuel Rodrigues]
    #v(0.1cm)
    #line(length: 5cm, stroke: 0.5pt + black)
    #text(size: 9pt)[
      *Cabo José Manuel Rodrigues*\
      N.º Matrícula: GNR-47823\
      Posto Territorial de Sintra
    ]
  ],

  // Carimbo do posto
  align(center)[
    #v(0.3cm)
    #box(
      width: 4cm,
      height: 2.5cm,
      stroke: 2pt + rgb(0, 50, 100),
      radius: 50%,
      inset: 5pt
    )[
      #align(center + horizon)[
        #text(size: 7pt, fill: rgb(0, 50, 100), weight: "bold")[
          GNR\
          POSTO TERRITORIAL\
          DE SINTRA\
          ———\
          #text(size: 6pt)[07 DEZ 2024]
        ]
      ]
    ]
  ]
)

#v(0.5cm)

#align(center)[
  #text(size: 8pt, fill: gray)[
    Documento gerado em 07/12/2024 às 11:47 | Sistema SIGESP v3.2.1 | Página 1 de 2
  ]
]

// ============ PÁGINA 2 - ADENDA MANUSCRITA ============

#pagebreak()

// Segunda página com mancha diferente
#place(top + left, dx: 2cm, dy: 8cm,
  circle(radius: 0.9cm, fill: rgb(139, 90, 43, 12), stroke: none)
)

// Cabeçalho mais simples na página 2
#align(center)[
  #text(size: 10pt, weight: "bold")[ADENDA AO RELATÓRIO — PT-SNT-2024-002847]
  #v(0.2cm)
  #text(size: 9pt, style: "italic")[Anotações pessoais do agente responsável]
]

#v(0.3cm)

#line(length: 100%, stroke: 0.5pt + gray)

#v(0.5cm)

// Simular página manuscrita
#set text(font: "DejaVu Sans", style: "italic", size: 11pt, fill: rgb(20, 20, 80))

#block(inset: 15pt)[

  *8 de Dezembro, 2024 — 23:40*

  #v(0.3cm)

  Não consigo dormir. Volto a ver os corpos sempre que fecho os olhos.

  #v(0.2cm)

  A Irmã Conceição parecia ter sido atirada contra todas as paredes ao mesmo tempo. Como se tivesse caído de uma altura enorme — mas o tecto da capela tem 4 metros. Não faz sentido.

  #v(0.2cm)

  A Irmã Beatriz... o cheiro. Nunca vou esquecer. Mas a pele dela estava perfeita. As roupas intactas. Como é que alguém queima por dentro sem queimar por fora?

  #v(0.2cm)

  E a Irmã Carmo. Afogada num balde com 11 centímetros de água. ONZE. Qualquer pessoa levantava a cabeça. A não ser que alguém a estivesse a segurar...

  #v(0.3cm)

  Mas as marcas nos ombros dela. #underline[Mãos pequenas. De criança.]

  #v(0.2cm)

  #text(weight: "bold")[Não havia nenhuma criança no orfanato.]

  #v(0.4cm)

  #line(length: 60%, stroke: 0.5pt + rgb(20, 20, 80))

  #v(0.3cm)

  Falei com a Matilde (cozinheira, 40 anos de serviço). Ela não quis dizer muito, mas quando mencionei a hora — 03:33 — vi-a benzer-se três vezes.

  #v(0.2cm)

  Disse-me só isto: #text(weight: "bold")["Há coisas naquela casa que não se explicam, senhor guarda. Há coisas que vêm cobrar o que lhes devem."]

  #v(0.2cm)

  Depois fechou a porta.

  #v(0.4cm)

  #line(length: 60%, stroke: 0.5pt + rgb(20, 20, 80))

  #v(0.3cm)

  O Inspector Mendonça da PJ ligou-me hoje. O caso vai ser arquivado. "Causas indeterminadas." Três mulheres mortas e ninguém quer saber como.

  #v(0.2cm)

  Eu sei que não devia, mas fiz cópias dos relatórios. Se algum dia alguém quiser a verdade, vou ter algo para mostrar.

  #v(0.3cm)

  03:33. Três mortes. Três portas trancadas. Três relógios parados.

  #v(0.2cm)

  #text(weight: "bold", size: 12pt)[Não acredito em coincidências.]

]

#v(0.8cm)

// Carimbo de arquivamento grande
#place(center + bottom, dy: -4cm,
  rotate(-20deg,
    box(
      stroke: 3pt + rgb(150, 50, 50),
      inset: 15pt,
      radius: 5pt,
      fill: rgb(255, 255, 255, 200),
      text(fill: rgb(150, 50, 50), weight: "bold", size: 16pt, tracking: 0.15em)[
        ARQUIVADO\
        #text(size: 10pt)[SEM RESOLUÇÃO]
      ]
    )
  )
)

#v(3cm)

#align(right)[
  #text(font: "DejaVu Serif", style: "normal", size: 8pt, fill: gray)[
    [Documento recuperado dos arquivos pessoais do Cabo Rodrigues, 2025]
  ]
]
