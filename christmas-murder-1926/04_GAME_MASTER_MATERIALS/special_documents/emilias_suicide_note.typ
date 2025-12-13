#import "@preview/cetz:0.1.2": canvas, draw

// Emilia's Suicide Note - 1926
// Typst simulation of handwritten deteriorating letter
// Created for Christmas Murder Mystery 1926

#set page(
  paper: "a5",
  fill: rgb("#F5E6D3"), // Aged cream paper
  margin: (left: 2cm, right: 1.5cm, top: 2cm, bottom: 2cm),
)

#set text(
  font: "Brush Script MT",
  size: 11pt,
  fill: rgb("#1C1C1C"),
)

// PAGE 1
#align(right)[
  #text(size: 10pt)[
    24 de Dezembro, 1926\
    ~21h30
  ]
]

#v(1em)

#text(size: 12pt)[
  A quem encontrar isto,
]

#v(0.8em)

Não consigo mais.

#v(0.5em)

Descobri esta noite o que sempre suspeitei\
mas rezava para não ser verdade.

#v(0.5em)

James não me ama.\
Talvez nunca amou.

#v(0.8em)

// TEAR STAIN MARKER
#place(
  dx: 15pt,
  dy: -10pt,
  circle(
    radius: 25pt,
    fill: rgb("#D3D3D3").transparentize(70%),
    stroke: none
  )
)

#v(1em)

Oito anos. Dois filhos. Uma vida\
construída sobre... mentira?

#v(0.5em)

Não. Não mentira. Pior.\
Indiferença.

#v(0.5em)

Esta noite vi-os.\
Não com olhos. Com ALMA.

#v(0.5em)

A forma como ele olha #underline[PARA ELA].\
Nunca me olhou assim.

#v(0.8em)

// Handwriting becomes irregular - simulate with larger, uneven text
#text(size: 12pt, font: "Bradley Hand")[
  Durante a sessão espírita, fingi canalizar\
  o morto. Mas os espíritos REAIS falaram.
]

#v(0.5em)

#text(size: 12pt)[
  Mostraram-me verdade:
]

#v(0.5em)

#text(size: 13pt, weight: "bold")[
  Ele e #underline[HELENA].\
  Há meses.\
  Talvez mais.
]

#v(0.8em)

// Large ink blot
#place(
  dx: 50pt,
  dy: -15pt,
  circle(
    radius: 8pt,
    fill: rgb("#1C1C1C").transparentize(30%),
    stroke: none
  )
)

#pagebreak()

// PAGE 2
#v(1em)

// Handwriting more irregular, pressured
#text(size: 13pt, font: "Marker Felt")[
  Confrontei-a. Discretamente. Num canto.
]

#v(0.5em)

Eu: "Há quanto tempo?"

#v(0.3em)

Ela (pálida): "Cristina... eu..."

#v(0.5em)

Não precisou terminar frase.\
Culpa dela dizia tudo.

#v(0.5em)

Então fui procurar JAMES.

#v(0.8em)

// Shaky line
#line(length: 100%, stroke: (paint: rgb("#1C1C1C"), thickness: 0.5pt, dash: "loosely-dotted"))

#v(0.8em)

Encontrei-o corredor. Sozinho.

#v(0.5em)

Eu: "Amas-me?"

#v(0.3em)

#text(size: 11pt)[
  Ele (surpreso, evitou olhar):\
  "Que pergunta é essa? Claro."
]

#v(0.5em)

Eu: "Então olha-me. Nos olhos. E diz."

#v(1.5em)

// Space - pause in writing
#h(2em) [...]

#v(1em)

Ele não conseguiu.

#v(0.5em)

Ficou em silêncio 10 segundos.\
(Contei. Um. Dois. Três... Dez.)

#v(0.5em)

Depois disse:\
"Cristina, não é momento para isto..."

#v(1em)

// Very irregular, heavy pressure handwriting
#text(size: 16pt, weight: "bold", font: "Marker Felt")[
  #underline[NÃO É MOMENTO?!]
]

#v(0.5em)

#text(size: 14pt, font: "Bradley Hand")[
  Quando É momento?
]

#v(0.5em)

#text(size: 12pt)[
  Quando acordei ao lado dele 2.920 manhãs\
  (8 anos × 365)?
]

#v(0.3em)

Quando tive filhos DELE dentro de mim\
9 meses? (Duas vezes!!)

#v(0.3em)

#text(size: 14pt, weight: "bold")[
  Quando abandonei #underline[DEUS] por ele?
]

#v(1em)

// Large tear stain - fresh, very smudged
#place(
  dx: 30pt,
  dy: -20pt,
  circle(
    radius: 35pt,
    fill: rgb("#A9A9A9").transparentize(60%),
    stroke: none
  )
)

#pagebreak()

// PAGE 3
#v(1em)

// Calmer handwriting, resigned
#text(size: 11pt, font: "Brush Script MT")[
  Deixei convento. Deixei fé. Deixei tudo.
]

#v(0.5em)

Por ELE.

#v(0.5em)

E ele...

#v(0.3em)

...nem consegue olhar-me nos olhos e\
MENTIR decentemente.

#v(1em)

Tomás tem 6 anos. Maria tem 4.

#v(0.5em)

São boas crianças. Inocentes.

#v(0.5em)

Não merecem mãe quebrada.\
Não merecem ver-me... assim.

#v(0.5em)

James cuidará deles? Duvido.

#v(0.3em)

Mas talvez Helena sim.\
#text(size: 10pt, style: "italic")[
  (Ironia amarga: rival melhor mãe que eu\
  conseguiria ser agora)
]

#v(1.2em)

// Very shaky handwriting - final section
#text(size: 13pt, font: "Marker Felt")[
  Padre Rui dirá que isto é pecado.\
  Pecado mortal.\
  Danação eterna.
]

#v(0.5em)

#text(size: 12pt)[
  Mas já estou no inferno.\
  Há meses.
]

#v(0.5em)

#text(size: 11pt)[
  Pelo menos agora... escolho QUANDO sair.
]

#v(1em)

Perdoem-me:

#v(0.3em)

#text(size: 10pt)[
  • Tomás, Maria - Mamã ama-vos mais que\
  #h(0.5em) própria vida. Por isso... vou.
]

#v(0.3em)

#text(size: 10pt)[
  • James - Espero que ela te faça feliz.\
  #h(0.5em) Eu nunca consegui. (Ou nunca me\
  #h(0.5em) deixaste?)
]

#v(0.3em)

#text(size: 10pt)[
  • Deus - Se ainda me ouves... guia meus\
  #h(0.5em) filhos. Não olhes para mim.
]

#v(1em)

O rio está frio esta época.\
Mas coração mais frio.

#v(1.5em)

// Nearly illegible signature - very shaky
#text(size: 14pt, font: "Marker Felt", style: "italic")[
  #place(
    dx: 0pt,
    dy: 0pt,
    rotate(-3deg)[Cristina Delacroix Silva]
  )
]

#v(2em)

// P.S. in different ink - added after, slightly clearer
#text(size: 10pt, fill: rgb("#2C2C2C"))[
  #box(
    stroke: (left: 1pt + rgb("#8B4513")),
    inset: (left: 8pt)
  )[
    *P.S.*

    #v(0.3em)

    Alguém morreu esta noite.\
    Reggie.

    #v(0.3em)

    Não fui eu.\
    (Se pensarem que fui... não importa já)

    #v(0.3em)

    Mas #underline[SEI quem foi].\
    Vi nos olhos dela. Dele.

    #v(0.3em)

    Mataram por amor?\
    Ou libertação?

    #v(0.3em)

    Eu mato-me por amor.\
    Mesmo amor.\
    Diferentes lados.
  ]
]

#v(1em)

// Final line - barely readable
#place(
  dx: 20pt,
  dy: 0pt,
  text(size: 13pt, font: "Marker Felt", style: "italic", fill: rgb("#3C3C3C").transparentize(20%))[
    O amor destrói. Sempre destruiu.
  ]
)

// Tear stain near signature
#place(
  dx: 150pt,
  dy: -80pt,
  circle(
    radius: 20pt,
    fill: rgb("#B0B0B0").transparentize(65%),
    stroke: none
  )
)

// Torn corner effect (visual indicator)
#place(
  top + right,
  dx: -1cm,
  dy: 0.5cm,
  polygon(
    fill: rgb("#D3C4B0"),
    stroke: none,
    (0pt, 0pt),
    (30pt, 0pt),
    (30pt, 30pt),
  )
)
