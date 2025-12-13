// Lista de Transferências - Documento Interno do Orfanato
// Documento para impressão - Acto 2
// PISTA: Os "transferidos" são os mortos

#set document(
  title: "Registo de Transferências 1960-2024",
  author: "Orfanato N.ª Sr.ª das Dores"
)

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
  fill: rgb(255, 253, 248),
)

#set text(
  font: "DejaVu Serif",
  size: 10pt,
  lang: "pt"
)

#set par(
  justify: true,
  leading: 0.6em
)

// ============ CABEÇALHO ============

#align(center)[
  #block(width: 100%, stroke: (bottom: 1pt + black), inset: (bottom: 8pt))[
    #text(size: 11pt, weight: "bold")[
      ORFANATO NOSSA SENHORA DAS DORES
    ]
    #v(3pt)
    #text(size: 9pt)[
      Sintra — Fundado em 1960
    ]
  ]
]

#v(0.5cm)

// ============ TÍTULO ============

#align(center)[
  #text(size: 14pt, weight: "bold")[
    REGISTO DE TRANSFERÊNCIAS
  ]
  #v(3pt)
  #text(size: 10pt)[
    1960 — 2024
  ]
]

#v(0.5cm)

#line(length: 100%, stroke: 0.5pt + gray)

#v(0.3cm)

// ============ NOTA INTRODUTÓRIA ============

#block(fill: rgb(250, 248, 240), inset: 10pt, stroke: 0.5pt + rgb(200, 190, 170))[
  #text(size: 9pt)[
    Este documento regista todas as transferências de menores para outras instituições ou famílias de acolhimento. Última actualização: Outubro 2024.
  ]
]

#v(0.4cm)

// ============ TABELA DE TRANSFERÊNCIAS ============

#text(weight: "bold", size: 10pt)[TRANSFERÊNCIAS REGISTADAS]
#v(0.2cm)

#table(
  columns: (1.5cm, 4cm, 2cm, 5cm),
  stroke: 0.5pt + gray,
  inset: 6pt,
  align: (center, left, center, left),

  [*Ano*], [*Nome*], [*Idade*], [*Destino*],

  [1965], [Maria Teresa Gonçalves], [12], [Família de acolhimento — Cascais],
  [1968], [António José Ferreira], [14], [Centro de Formação Profissional — Setúbal],
  [1971], [Clara Isabel Santos], [16], [Emancipação — Lisboa],

  table.cell(fill: rgb(255, 245, 235))[*1973*],
  table.cell(fill: rgb(255, 245, 235))[*João Manuel Silva*],
  table.cell(fill: rgb(255, 245, 235))[*8*],
  table.cell(fill: rgb(255, 245, 235))[*Transferido para instituição em Coimbra*],

  [1976], [Pedro Miguel Costa], [15], [Centro de Acolhimento — Porto],
  [1980], [Ana Rita Marques], [11], [Família de acolhimento — Amadora],
  [1984], [Rui Alexandre Neves], [16], [Emancipação — Emprego em fábrica local],

  table.cell(fill: rgb(255, 245, 235))[*1987*],
  table.cell(fill: rgb(255, 245, 235))[*Sofia Marques Ribeiro*],
  table.cell(fill: rgb(255, 245, 235))[*10*],
  table.cell(fill: rgb(255, 245, 235))[*Transferida para família de acolhimento*],

  [1992], [Carla Susana Pereira], [14], [Instituto de Reinserção — Leiria],
  [1997], [Bruno Filipe Rodrigues], [17], [Emancipação — Serviço militar],
  [2003], [Inês Catarina Lopes], [13], [Família de acolhimento — Oeiras],

  table.cell(fill: rgb(255, 245, 235))[*2008*],
  table.cell(fill: rgb(255, 245, 235))[*Miguel António Costa*],
  table.cell(fill: rgb(255, 245, 235))[*16*],
  table.cell(fill: rgb(255, 245, 235))[*Transferido para centro em Lisboa*],

  [2012], [Tiago André Fernandes], [15], [Centro de Acolhimento — Almada],
  [2018], [Beatriz Sofia Carvalho], [14], [Família de acolhimento — Sintra],
  [2021], [Rafael José Martins], [17], [Emancipação — Universidade],
)

#v(0.4cm)

// ============ NOTA MANUSCRITA ============

#align(right)[
  #block(width: 8cm, fill: rgb(255, 255, 230), inset: 10pt, stroke: 0.5pt + rgb(200, 180, 100))[
    #text(font: "DejaVu Sans", size: 9pt, style: "italic", fill: rgb(80, 80, 120))[
      Verificar destinos das transferências de 1973, 1987 e 2008.

      Nenhuma confirmação de chegada nos registos das instituições indicadas.

      — H.M.
    ]
  ]
]

#v(0.4cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ ESTATÍSTICAS ============

#text(weight: "bold", size: 10pt)[RESUMO ESTATÍSTICO]
#v(0.15cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,

  [
    #table(
      columns: (4cm, 2cm),
      stroke: 0.5pt + gray,
      inset: 5pt,

      [Total de transferências], [15],
      [Para famílias de acolhimento], [5],
      [Para outras instituições], [4],
      [Emancipação], [4],
      [*Sem confirmação*], [*3*],
    )
  ],

  [
    #block(fill: rgb(255, 250, 240), inset: 10pt, stroke: 0.5pt + rgb(200, 180, 150))[
      #text(size: 9pt)[
        *Nota do arquivo:*

        As transferências de 1973, 1987 e 2008 não possuem documentação de confirmação de chegada ao destino.

        Pedidos de informação às instituições indicadas ficaram sem resposta.
      ]
    ]
  ]
)

#v(0.5cm)

// ============ RODAPÉ ============

#line(length: 100%, stroke: 0.5pt + gray)
#v(0.2cm)

#grid(
  columns: (1fr, 1fr),

  [
    #text(size: 8pt)[
      Documento interno\
      Arquivo administrativo — Pasta T-01\
      Acesso: Restrito
    ]
  ],

  align(right)[
    #text(size: 8pt)[
      Última actualização: Outubro 2024\
      Responsável: Irmã Helena M. Martins\
      (Arquivista)
    ]
  ]
)

#v(0.5cm)

#align(center)[
  #text(size: 7pt, fill: rgb(150, 150, 150))[
    Cópia extraída do arquivo para efeitos de investigação — Proc. 2847/2024
  ]
]
