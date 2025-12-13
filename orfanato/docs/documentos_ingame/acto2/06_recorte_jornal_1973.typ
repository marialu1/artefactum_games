// Recorte de Jornal - João (1973)
// Documento para impressão - Acto 2

#set document(
  title: "Recorte Jornal de Sintra 1973",
  author: "Jornal de Sintra"
)

#set page(
  paper: "a5",
  margin: (top: 1cm, bottom: 1cm, left: 1cm, right: 1cm),
  fill: rgb(252, 248, 235),
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
  #block(width: 100%, stroke: (bottom: 1pt + black), inset: (bottom: 5pt))[
    #text(size: 16pt, weight: "bold", font: "DejaVu Serif")[
      JORNAL DE SINTRA
    ]
    #v(2pt)
    #text(size: 7pt)[
      Fundado em 1934 — Ano XXXIX — N.º 2.047 — 15 de Março de 1973 — Preço: 2\$50
    ]
  ]
]

#v(0.4cm)

// ============ MANCHETE ============

#align(center)[
  #text(size: 14pt, weight: "bold")[
    CRIANÇA MORRE EM INCÊNDIO
  ]
  #v(2pt)
  #text(size: 10pt, style: "italic")[
    Tragédia no Orfanato Nossa Senhora das Dores
  ]
]

#v(0.3cm)

#line(length: 100%, stroke: 0.5pt + black)

#v(0.3cm)

// ============ CORPO DA NOTÍCIA ============

#columns(2, gutter: 0.5cm)[
  #text(weight: "bold")[SINTRA] — Uma criança de 8 anos perdeu a vida na madrugada de ontem, vítima de um incêndio que deflagrou na cozinha do Orfanato Nossa Senhora das Dores.

  A vítima, *João Manuel Silva*, órfão desde os 2 anos, residia na instituição desde 1967. Segundo fontes da direcção do orfanato, o menor terá entrado na cozinha durante a noite, presumivelmente para procurar comida.

  #v(0.2cm)

  #text(weight: "bold")[Circunstâncias por esclarecer]

  O fogo terá tido origem num fogão a lenha que se encontrava aceso, tendo as chamas alastrado rapidamente aos armários de madeira adjacentes.

  "Foi um acidente terrível", declarou a Madre Superiora Francisca ao nosso jornal. "A criança não devia estar na cozinha àquela hora. Infelizmente, quando demos conta, já era tarde."

  Os bombeiros de Sintra foram chamados às 4 da manhã, tendo controlado as chamas em cerca de uma hora. Os danos materiais foram limitados à área da cozinha.

  #v(0.2cm)

  #text(weight: "bold")[GNR investiga]

  A Guarda Nacional Republicana esteve no local e abriu inquérito às circunstâncias do incêndio. Porém, segundo o comandante do posto de Sintra, "tudo indica tratar-se de um acidente".

  #colbreak()

  #v(0.2cm)

  #text(weight: "bold")[Testemunhas silenciosas]

  Algumas crianças do orfanato terão ouvido barulhos durante a noite, mas nenhuma assistiu directamente ao incidente. O corpo foi encontrado junto ao fogão, com queimaduras extensas.

  #v(0.2cm)

  #block(fill: rgb(245, 240, 225), inset: 6pt, stroke: 0.5pt + rgb(180, 170, 150))[
    #text(style: "italic", size: 8pt)[
      "O João era um miúdo problemático", confidenciou uma funcionária que pediu anonimato. "Estava sempre a arranjar sarilhos. Mas não merecia isto."
    ]
  ]

  #v(0.2cm)

  #text(weight: "bold")[Funeral amanhã]

  O funeral realizar-se-á amanhã, às 15 horas, no cemitério de Sintra. A cerimónia será restrita aos funcionários e crianças do orfanato.

  #v(0.2cm)

  #text(size: 8pt, style: "italic")[
    O Orfanato Nossa Senhora das Dores funciona desde 1960 e acolhe actualmente 34 crianças órfãs ou abandonadas.
  ]
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + black)

#v(0.2cm)

#align(center)[
  #text(size: 7pt, fill: rgb(100, 100, 100))[
    Recorte arquivado — Biblioteca Municipal de Sintra — Cota: JS/1973/MAR/15
  ]
]
