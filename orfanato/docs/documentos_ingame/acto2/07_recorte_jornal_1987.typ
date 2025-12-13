// Recorte de Jornal - Sofia (1987)
// Documento para impressão - Acto 2

#set document(
  title: "Recorte Correio da Manhã 1987",
  author: "Correio da Manhã"
)

#set page(
  paper: "a5",
  margin: (top: 1cm, bottom: 1cm, left: 1cm, right: 1cm),
  fill: rgb(250, 246, 232),
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
  #block(width: 100%, stroke: (bottom: 2pt + rgb(180, 50, 50)), inset: (bottom: 5pt))[
    #text(size: 18pt, weight: "bold", fill: rgb(180, 50, 50), font: "DejaVu Sans")[
      CORREIO DA MANHÃ
    ]
    #v(2pt)
    #text(size: 7pt)[
      Diário — Ano VIII — N.º 2.891 — Sábado, 3 de Outubro de 1987 — Preço: 45\$00
    ]
  ]
]

#v(0.4cm)

// ============ MANCHETE ============

#align(center)[
  #text(size: 14pt, weight: "bold")[
    MENINA AFOGA-SE EM CAVE DE ORFANATO
  ]
  #v(2pt)
  #text(size: 10pt, style: "italic")[
    Criança de 10 anos encontrada morta em Sintra
  ]
]

#v(0.3cm)

#line(length: 100%, stroke: 0.5pt + black)

#v(0.3cm)

// ============ CORPO DA NOTÍCIA ============

#columns(2, gutter: 0.5cm)[
  #text(weight: "bold")[SINTRA] — Uma menina de 10 anos foi encontrada morta ontem na cave do Orfanato Nossa Senhora das Dores, em Sintra. *Sofia Marques Ribeiro* terá morrido por afogamento, segundo as primeiras indicações das autoridades.

  O corpo foi descoberto às 6h30 da manhã por uma funcionária que se dirigia à arrecadação. A menor estava submersa num tanque de água utilizado para lavagens, localizado na cave da instituição.

  #v(0.2cm)

  #text(weight: "bold")[Acesso proibido]

  A cave era uma área de acesso restrito, segundo a direcção do orfanato. "As crianças sabem que não podem ir à cave sozinhas", afirmou a Irmã Conceição, responsável pela educação das menores. "Não sabemos como a Sofia lá entrou."

  A Polícia Judiciária de Lisboa deslocou-se ao local e está a investigar as circunstâncias da morte. Fontes próximas do processo indicam que "não há indícios de crime".

  #v(0.2cm)

  #text(weight: "bold")[Criança "difícil"]

  Funcionários do orfanato, que pediram anonimato, descreveram Sofia como uma criança "rebelde" e "desobediente".

  #colbreak()

  #block(fill: rgb(245, 240, 225), inset: 6pt, stroke: 0.5pt + rgb(180, 170, 150))[
    #text(style: "italic", size: 8pt)[
      "Ela não respeitava as regras. Estava sempre a ir a sítios proibidos. Foi um acidente à espera de acontecer."
    ]
  ]

  #v(0.2cm)

  A menor estava na instituição desde os 3 anos, após ter sido abandonada pelos pais biológicos. Não tinha família conhecida.

  #v(0.2cm)

  #text(weight: "bold")[Segundo caso em 14 anos]

  Esta é a segunda morte de uma criança no Orfanato Nossa Senhora das Dores. Em 1973, um menino de 8 anos morreu num incêndio na cozinha da mesma instituição.

  A Madre Superiora Francisca recusou comentar este historial, limitando-se a dizer que "são tragédias que Deus permite para nos testar".

  #v(0.2cm)

  #text(weight: "bold")[Inquérito arquivado]

  A PJ informou que, na ausência de indícios de crime, o inquérito será arquivado após a conclusão da autópsia. O funeral terá lugar na próxima segunda-feira.
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + black)

#v(0.2cm)

#align(center)[
  #text(size: 7pt, fill: rgb(100, 100, 100))[
    Recorte arquivado — Hemeroteca Municipal de Lisboa — Cota: CM/1987/OUT/03
  ]
]
