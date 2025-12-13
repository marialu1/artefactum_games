// Testemunho Carla - Sobrevivente (Ex-residente)
// Documento para impressão - Acto 2

#set document(
  title: "Declaração de Testemunha - Carla",
  author: "Polícia Judiciária"
)

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
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

// ============ CABEÇALHO PJ ============

#align(center)[
  #block(width: 100%, stroke: (bottom: 2pt + rgb(0, 51, 102)), inset: (bottom: 10pt))[
    #text(size: 7pt, fill: rgb(100,100,100))[MINISTÉRIO DA JUSTIÇA]\
    #v(3pt)
    #text(size: 12pt, weight: "bold", fill: rgb(0, 51, 102))[
      POLÍCIA JUDICIÁRIA
    ]\
    #v(2pt)
    #text(size: 10pt)[Directoria de Lisboa e Vale do Tejo]\
    #text(size: 9pt)[Unidade de Investigação Criminal]\
  ]
]

#v(0.4cm)

// ============ TÍTULO ============

#align(center)[
  #block(fill: rgb(245, 245, 250), width: 100%, inset: 10pt, stroke: 0.5pt + rgb(0, 51, 102))[
    #text(size: 12pt, weight: "bold", fill: rgb(0, 51, 102))[
      DECLARAÇÃO DE TESTEMUNHA
    ]
    #v(3pt)
    #text(size: 9pt)[
      Testemunho n.º 010/2024 — Depoimento Voluntário
    ]
  ]
]

#v(0.3cm)

// ============ IDENTIFICAÇÃO DO PROCESSO ============

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,

  box(stroke: 0.5pt + gray, inset: 8pt, width: 100%)[
    #text(size: 9pt)[
      *Processo:* 2847/2024\
      *Testemunha:* Carla Sofia Ribeiro Mendes\
      *Profissão:* Estudante de Psicologia\
      *Ligação:* Ex-residente (1995-2001)
    ]
  ],

  box(stroke: 0.5pt + gray, inset: 8pt, width: 100%)[
    #text(size: 9pt)[
      *Data:* 10 de Dezembro de 2024\
      *Hora:* 10:00\
      *Local:* Esquadra de Sintra\
      *(a pedido da testemunha)*
    ]
  ]
)

#v(0.3cm)

#block(fill: rgb(245, 250, 245), inset: 8pt, stroke: 0.5pt + rgb(100, 150, 100))[
  #text(size: 9pt)[
    *DEPOIMENTO VOLUNTÁRIO* — A testemunha contactou a PJ após saber das mortes pelas notícias. Apresentou-se disposta a declarar sobre a sua experiência no orfanato há 23 anos.
  ]
]

#v(0.4cm)

// ============ IDENTIFICAÇÃO DA TESTEMUNHA ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[IDENTIFICAÇÃO]
#v(0.1cm)

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + rgb(200, 200, 200),
  inset: 5pt,

  [*Nome:*], [Carla Sofia Ribeiro Mendes],
  [*Idade:*], [31 anos],
  [*Profissão:*], [Estudante de Psicologia],
  [*Naturalidade:*], [Desconhecida (abandonada à nascença)],
  [*Residência:*], [Lisboa],
  [*Ligação ao orfanato:*], [Ex-residente (1995-2001), fugiu aos 8 anos],
)

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ DECLARAÇÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[DECLARAÇÃO]
#v(0.15cm)

Esperem 23 anos para alguém me perguntar o que acontecia naquela casa. 23 anos.

Estou pronta para falar.

#v(0.2cm)
#text(weight: "bold")[Sobre o tempo no orfanato (1995-2001):]

Cheguei bebé. Não conheci outra vida. O orfanato ERA a vida.

E a vida era... sobreviver.

Acordar. Obedecer. Não fazer perguntas. Não chorar. Não reagir. Sobreviver mais um dia.

#text(style: "italic", size: 9pt)[[Quando questionada sobre abusos específicos:]]

Não vou dar detalhes. Não porque não queira — porque não consigo. Há coisas que guardei numa caixa na minha cabeça e essa caixa não abre.

Mas posso dizer isto: a "disciplina" não era disciplina. *Era tortura.*

#block(fill: rgb(255, 250, 245), inset: 10pt, stroke: 0.5pt + rgb(200, 180, 150))[
  A *"cela de reflexão"* era um armário escuro onde crianças de 5, 6, 7 anos eram fechadas durante horas. Sem luz. Sem comida. Sem casa de banho.

  As *"porções especiais"* significavam não comer. Crianças a passar fome como castigo.

  E havia outras coisas. Piores. Que não vou descrever.
]

#v(0.2cm)
#text(weight: "bold")[Sobre as pessoas:]

A Madre Superiora Francisca já lá estava quando eu cheguei. Era ela que mandava. Tudo passava por ela.

A Irmã Conceição era a "educadora". Parecia simpática mas era fria por dentro. Tratava-nos como objectos.

A Irmã Beatriz era... a executora. Quando ela aparecia, sabíamos que alguém ia sofrer.

A Irmã Carmo chegou em 2001, pouco antes de eu fugir. Não a conheci bem.

*O Manuel e a Rosa eram os únicos humanos naquela casa. Os únicos.*

#pagebreak()

// ============ PÁGINA 2 ============

#align(center)[
  #text(size: 9pt, fill: rgb(100,100,100))[
    Polícia Judiciária — DLVT | Proc. 2847/2024 | Test. 010/2024 | Pág. 2/2
  ]
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

#text(weight: "bold")[Sobre a fuga (2001):]

Uma noite, estava de castigo no corredor. Era habitual.

Vi uma menina. Cabelo escuro. Vestido molhado.

Perguntei: "Também estás de castigo?"

Ela não respondeu. Só apontou. Para o portão.

Na manhã seguinte, o portão estava aberto. Havia uma mochila com comida junto à porta.

Corri. Não olhei para trás. Cheguei à esquadra de Sintra. Um guarda acreditou em mim.

Tinha 8 anos.

#v(0.2cm)
#text(weight: "bold")[Sobre a menina molhada:]

Durante anos pensei que era uma órfã. Uma criança real.

Depois, anos mais tarde, descobri a história da Sofia. Morreu em 1987. Afogada na cave.

*14 anos antes de eu a ver.*

#text(style: "italic", size: 9pt)[[Pausa]]

Vocês não vão acreditar. Eu também não acreditaria. Mas aquela casa tem memória.

#block(fill: rgb(255, 250, 240), inset: 10pt, stroke: 0.5pt + gray)[
  #text(style: "italic")[
    A Sofia salvou-me. Mostrou-me a saída. Não sei porquê eu.
  ]
]

#v(0.2cm)
#text(weight: "bold")[Sobre as mortes das freiras:]

Quando soube, a minha primeira reacção foi: "Finalmente."

Não estou orgulhosa disso. Mas é a verdade.

Aquelas mulheres batiam em crianças. Fechavam-nas em armários. Deixavam-nas passar fome. E quando uma morria, era "acidente".

*João, 1973. Sofia, 1987. Miguel, 2008.*

Três "acidentes" em 64 anos. Mais quantos que não sabemos?

#text(style: "italic", size: 9pt)[[Tom mais baixo:]]

Eu sabia que um dia alguém ia morrer naquela casa. Só não sabia que iam ser elas.

Se me perguntam se estou triste... não. Não estou.

E isso assusta-me um bocado.

#v(0.2cm)
#text(weight: "bold")[Sobre o que acha que aconteceu:]

#text(style: "italic", size: 9pt)[[Silêncio longo]]

Vocês não vão escrever isto no relatório oficial. Mas eu vou dizer na mesma.

Acho que foram eles. As crianças. João, Sofia, Miguel.

Não sei como. Não sei os detalhes. Mas acho que esperaram. Anos. Décadas.

*E finalmente conseguiram justiça.*

Não me peçam para condenar isso. Não consigo.

#v(0.4cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ ENCERRAMENTO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[FIM DA DECLARAÇÃO]
#v(0.3cm)

#line(length: 5cm, stroke: 0.5pt + black)
#text(size: 9pt)[
  *Carla Sofia Ribeiro Mendes*\
  Sintra, 10 de Dezembro de 2024
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ OBSERVAÇÕES DO INVESTIGADOR ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[OBSERVAÇÕES DO INVESTIGADOR]
#v(0.15cm)

Testemunha credível. Articulada, directa, emocionalmente controlada.

#table(
  columns: (0.5cm, 1fr),
  stroke: none,
  inset: 3pt,

  [1.], [Confirma sistema de abusos sistemáticos (armário, fome, violência)],
  [2.], [Confirma que Manuel e Rosa ajudavam crianças],
  [3.], [Relata encontro com "Sofia" em 2001 — 14 anos após a morte],
  [4.], [Fuga facilitada por portão aberto e comida (Manuel? Rosa?)],
  [5.], [Perspectiva de que as mortes são "justiça"],
)

#v(0.2cm)
#block(stroke: (left: 3pt + rgb(0, 51, 102)), inset: (left: 10pt, y: 5pt))[
  O relato do encontro com Sofia é consistente com outros testemunhos. Uma criança de 8 anos não inventaria isto.

  *Esta testemunha pode ser crucial para estabelecer o padrão histórico de abusos.*
]

#v(0.5cm)

#align(center)[
  #text(size: 8pt, fill: rgb(150,150,150))[
    Documento classificado como: TESTEMUNHO — FASE 2\
    Código de verificação: CAR-010
  ]
]
