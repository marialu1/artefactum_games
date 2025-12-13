// Testemunho Rosa - Cozinheira
// Documento para impressão - Acto 2

#set document(
  title: "Declaração de Testemunha - Rosa",
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
      Testemunho n.º 004/2024
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
      *Testemunha:* Rosa Maria dos Santos Pereira\
      *Função:* Cozinheira\
      *Anos de serviço:* 28 (desde 1996)
    ]
  ],

  box(stroke: 0.5pt + gray, inset: 8pt, width: 100%)[
    #text(size: 9pt)[
      *Data:* 8 de Dezembro de 2024\
      *Hora:* 16:00\
      *Local:* Residência da testemunha, Sintra\
      *Investigador:* Insp. Sofia Marques
    ]
  ]
)

#v(0.4cm)

// ============ IDENTIFICAÇÃO DA TESTEMUNHA ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[IDENTIFICAÇÃO]
#v(0.1cm)

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + rgb(200, 200, 200),
  inset: 5pt,

  [*Nome:*], [Rosa Maria dos Santos Pereira],
  [*Idade:*], [63 anos],
  [*Naturalidade:*], [Sintra],
  [*Estado Civil:*], [Casada],
  [*Profissão:*], [Cozinheira],
  [*Residência:*], [Travessa da Igreja, 7, Sintra],
)

#v(0.3cm)

#block(fill: rgb(255, 250, 245), inset: 8pt, stroke: 0.5pt + rgb(200, 180, 150))[
  #text(style: "italic", size: 9pt)[
    Nota: A declarante chorou várias vezes durante o interrogatório. Mostrou-se emocionalmente afectada mas cooperativa.
  ]
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ DECLARAÇÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[DECLARAÇÃO]
#v(0.15cm)

Eu, Rosa Maria dos Santos Pereira, declaro o seguinte:

Trabalhei como cozinheira no orfanato durante 28 anos. Fazia o pequeno-almoço, o almoço, o jantar. Alimentava as crianças. Era o meu trabalho.

#text(style: "italic", size: 9pt)[[Pausa para se recompor]]

Elas morreram. As três. Ainda não consigo acreditar.

#v(0.2cm)
#text(weight: "bold")[Sobre a noite de 7 de Dezembro:]

Não dormi bem essa noite. Tenho insónias há anos. Estava acordada.

Às... não sei exactamente, mas era depois das três... ouvi algo. Na cozinha. Eu moro a 10 minutos do orfanato mas juro que ouvi.

#text(style: "italic", size: 9pt)[[Quando questionada sobre o que ouviu:]]

Não sei explicar. Como... como panelas a bater? Mas abafado. Distante. Pode ter sido imaginação. Mas ouvi.

Não fui ver. Devia ter ido. Não fui.

De manhã ligaram-me. E eu soube.

#v(0.2cm)
#text(weight: "bold")[Sobre as vítimas:]

Conhecia as três. Trabalhávamos juntas há anos.

A Irmã Conceição... ela dava ordens. Não era má comigo, mas também não era simpática. Era fria. Olhava para as crianças como se fossem... números.

A Irmã Beatriz...

#text(style: "italic", size: 9pt)[[Pausa longa]]

Não quero falar mal dos mortos. Mas a Beatriz... as crianças tinham medo dela. Muito medo. Eu via os olhos deles quando ela entrava na cozinha.

A Irmã Carmo era diferente. Mais nova. No início parecia ter boas intenções. Depois... mudou. Tornou-se como as outras.

#v(0.2cm)
#text(weight: "bold")[Sobre as crianças:]

#text(style: "italic", size: 9pt)[[A declarante começou a chorar novamente]]

Eu via tudo. Via e não fazia nada. Sou uma cobarde.

#text(style: "italic", size: 9pt)[[Quando questionada sobre o que via:]]

As crianças vinham à minha cozinha com marcas. Hematomas. Arranhões. Diziam que tinham caído. Mentira. Eu sabia que era mentira.

Eu punha pomada. Dava-lhes um bocado de pão extra. Dizia-lhes para aguentar. "Vais sair daqui um dia." Era o que eu dizia.

Não era suficiente. Nunca foi suficiente.

#pagebreak()

// ============ PÁGINA 2 ============

#align(center)[
  #text(size: 9pt, fill: rgb(100,100,100))[
    Polícia Judiciária — DLVT | Proc. 2847/2024 | Test. 004/2024 | Pág. 2/2
  ]
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

#text(style: "italic", size: 9pt)[[Quando questionada sobre castigos específicos:]]

Havia uma regra. Crianças de castigo não jantavam. A Madre Superiora decidia. Eu recebia uma lista de nomes. Esses nomes não comiam.

Crianças a passar fome. E eu cozinhava para as outras como se fosse normal.

#text(style: "italic", size: 9pt)[[Mais baixo:]]

Às vezes eu "esquecia" comida no corredor. Perto dos quartos. Pão, fruta. Para elas encontrarem. Não sei se ajudou.

#v(0.2cm)
#text(weight: "bold")[Sobre a noite de 7 de Dezembro — detalhe adicional:]

Há uma coisa que não disse.

Quando ouvi o barulho, olhei para o relógio. Eram *3:33*. Exactamente.

E senti... senti como se estivesse tudo bem. Pela primeira vez em 28 anos, senti que algo... acabou.

Não sei como explicar. Senti alívio. E depois senti vergonha por sentir alívio.

#v(0.2cm)
#text(weight: "bold")[Sobre fenómenos estranhos:]

Eles estão lá. Os miúdos que morreram. Sempre estiveram.

Eu nunca vi nada directamente. Mas a cozinha... a cozinha onde o João morreu em 1973... está sempre quente. Mesmo no inverno. Mesmo com tudo desligado.

E às vezes, quando estou a cozinhar sozinha, sinto que não estou sozinha.

#block(fill: rgb(250, 250, 245), inset: 10pt, stroke: 0.5pt + gray)[
  #text(style: "italic", size: 9.5pt)[
    "Agora acordaram. É o que eu acho. Agora fizeram alguma coisa."
  ]
]

#v(0.4cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ ENCERRAMENTO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[FIM DA DECLARAÇÃO]
#v(0.15cm)

Declaro que as informações acima são verdadeiras. Que Deus me perdoe pelo que não fiz.

#v(0.5cm)

#line(length: 5cm, stroke: 0.5pt + black)
#text(size: 9pt)[
  *Rosa Maria dos Santos Pereira*\
  Sintra, 8 de Dezembro de 2024
]

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ OBSERVAÇÕES DO INVESTIGADOR ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[OBSERVAÇÕES DO INVESTIGADOR]
#v(0.15cm)

Testemunha credível. Emocionalmente devastada mas coerente.

#table(
  columns: (0.5cm, 1fr),
  stroke: none,
  inset: 3pt,

  [1.], [Sistema de castigos incluía privação de comida],
  [2.], [Crianças apresentavam marcas de violência física],
  [3.], [Sons estranhos às *03:33* exactamente],
  [4.], [Conhecimento de fenómenos inexplicáveis na cozinha],
  [5.], [Tentou ajudar crianças (comida escondida no corredor)],
)

#v(0.2cm)
#block(stroke: (left: 3pt + rgb(0, 51, 102)), inset: (left: 10pt, y: 5pt))[
  *Conclusão:* Testemunha não é suspeita. É vítima secundária do sistema. Possível ligação ao caseiro (Manuel) para acções de resistência coordenadas.
]

#v(0.5cm)

#align(center)[
  #text(size: 8pt, fill: rgb(150,150,150))[
    Documento classificado como: TESTEMUNHO — FASE 2\
    Código de verificação: ROS-004
  ]
]
