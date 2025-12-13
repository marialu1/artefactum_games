// Recorte de Jornal - Miguel (2008)
// Documento para impressão - Acto 2

#set document(
  title: "Recorte Diário de Notícias 2008",
  author: "Diário de Notícias"
)

#set page(
  paper: "a5",
  margin: (top: 1cm, bottom: 1cm, left: 1cm, right: 1cm),
  fill: rgb(252, 250, 245),
)

#set text(
  font: "DejaVu Serif",
  size: 9pt,
  lang: "pt"
)

#set par(
  justify: true,
  leading: 0.5em
)

// ============ CABEÇALHO DO JORNAL ============

#align(center)[
  #block(width: 100%, stroke: (bottom: 2pt + rgb(0, 51, 102)), inset: (bottom: 5pt))[
    #text(size: 18pt, weight: "bold", fill: rgb(0, 51, 102), font: "DejaVu Sans")[
      DIÁRIO DE NOTÍCIAS
    ]
    #v(2pt)
    #text(size: 7pt)[
      Fundado em 1864 — Ano 144 — N.º 50.892 — Sábado, 22 de Novembro de 2008 — Preço: 1,00 €
    ]
  ]
]

#v(0.4cm)

// ============ MANCHETE ============

#align(center)[
  #text(size: 13pt, weight: "bold")[
    ADOLESCENTE MORRE EM QUEDA\
    NO ORFANATO DE SINTRA
  ]
  #v(2pt)
  #text(size: 10pt, style: "italic")[
    Jovem de 16 anos caiu das escadas durante a noite
  ]
]

#v(0.3cm)

#line(length: 100%, stroke: 0.5pt + black)

#v(0.3cm)

// ============ CORPO DA NOTÍCIA ============

#columns(2, gutter: 0.5cm)[
  #text(weight: "bold")[SINTRA] — Um jovem de 16 anos morreu na madrugada de ontem após uma queda nas escadas do Orfanato Nossa Senhora das Dores, em Sintra.

  *Miguel António Costa*, residente na instituição desde os 4 anos, foi encontrado sem vida no sopé da escadaria principal do edifício. Segundo a GNR, a morte terá sido instantânea devido a traumatismo craniano grave.

  #v(0.2cm)

  #text(weight: "bold")[Circunstâncias por apurar]

  As autoridades estão a investigar as circunstâncias do acidente. "Aparentemente, o jovem terá tropeçado quando descia as escadas durante a noite", informou fonte da GNR de Sintra.

  A direcção do orfanato emitiu uma nota de pesar, descrevendo Miguel como "um jovem inteligente e dedicado aos estudos".

  #v(0.2cm)

  #block(fill: rgb(245, 243, 235), inset: 6pt, stroke: 0.5pt + rgb(150, 150, 150))[
    #text(style: "italic", size: 8pt)[
      "O Miguel era um rapaz especial. Passava muito tempo na biblioteca. Gostava de investigar coisas", disse uma funcionária em anonimato.
    ]
  ]

  #colbreak()

  #v(0.2cm)

  #text(weight: "bold")[Terceira morte em 48 anos]

  Esta é a terceira morte de um menor na história do orfanato. Em 1973, um menino de 8 anos morreu num incêndio. Em 1987, uma menina de 10 anos afogou-se na cave.

  Questionada sobre este padrão, a Madre Superiora Francisca, que dirige a instituição há mais de 40 anos, respondeu apenas: "São acidentes. Tragédias que acontecem."

  #v(0.2cm)

  #text(weight: "bold")[Amigos falam em "comportamento estranho"]

  Colegas de Miguel, que preferiram não se identificar, disseram que o jovem andava "diferente" nas últimas semanas.

  "Ele disse que tinha descoberto coisas. Que ia contar tudo", revelou um dos jovens. "Nunca soubemos o quê."

  #v(0.2cm)

  #text(weight: "bold")[PJ chamada ao caso]

  A Polícia Judiciária foi chamada a investigar, mas fontes próximas do processo indicam que "não há suspeitas de crime". O inquérito deverá ser arquivado como acidente.
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + black)

#v(0.2cm)

#align(center)[
  #text(size: 7pt, fill: rgb(100, 100, 100))[
    Recorte arquivado — Hemeroteca Digital — DN/2008/NOV/22/pág.14
  ]
]
