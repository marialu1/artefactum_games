// Testemunho Dr. António - Sumário Pericial
// Documento para impressão - Acto 1

#set document(
  title: "Relatório Pericial - Sumário",
  author: "Dr. António Manuel Ferreira"
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
      RELATÓRIO PERICIAL — SUMÁRIO PARA INVESTIGAÇÃO
    ]
  ]
]

#v(0.3cm)

// ============ IDENTIFICAÇÃO ============

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Processo:*], [2847/2024],
  [*Data do Relatório:*], [9 de Dezembro de 2024],
  [*Perito:*], [Dr. António Manuel Ferreira],
  [*Instituição:*], [INMLCF — Gabinete de Sintra],
)

#v(0.4cm)

// ============ NOTA INTRODUTÓRIA ============

#block(fill: rgb(250, 250, 245), inset: 10pt, stroke: 0.5pt + gray)[
  #text(weight: "bold")[NOTA INTRODUTÓRIA]

  #v(0.2cm)
  Este documento constitui um sumário dos achados periciais para efeitos de investigação. Os relatórios completos de autópsia encontram-se em anexo (Autópsias n.º 847/2024, 848/2024, 849/2024).

  #v(0.2cm)
  #text(style: "italic")[
    Exerço medicina legal há 23 anos. Nesse tempo, vi de tudo. Acidentes, homicídios, suicídios. Sempre consigo explicar o "como". Nem sempre o "porquê", mas sempre o "como".

    Desta vez não consigo.
  ]
]

#v(0.4cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ VÍTIMA 1 ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[VÍTIMA 1: IRMÃ CONCEIÇÃO]
#v(0.15cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,

  [
    *Idade:* 68 anos\
    *Local:* Capela\
    *Posição:* Decúbito ventral, a 3m do altar
  ],
  [
    *Causa de morte:* Traumatismo crânio-encefálico grave\
    *Hora estimada:* *03:33* (± 15 min)
  ]
)

#v(0.2cm)
*Achados relevantes:*
- Três áreas distintas de impacto craniano (parietal direita, occipital esquerda, frontal)
- Fracturas costais bilaterais (direita E esquerda)
- Hemorragia subdural extensa
- Expressão de terror preservada no rosto

#v(0.2cm)
*Anomalia:* O padrão de lesões é consistente com ser projectada contra superfícies duras, múltiplas vezes, de diferentes direcções. Como se tivesse sido atirada contra as paredes.

Mas não há qualquer evidência de agressor. Não há marcas de mãos. Não há material subungueal. A capela estava trancada por dentro.

*Quem a atirou? Como? — Não sei.*

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ VÍTIMA 2 ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[VÍTIMA 2: IRMÃ BEATRIZ]
#v(0.15cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,

  [
    *Idade:* 72 anos\
    *Local:* Cozinha\
    *Posição:* Sentada em cadeira, cabeça tombada
  ],
  [
    *Causa de morte:* Falência multiorgânica por lesões térmicas internas\
    *Hora estimada:* *03:33* (± 15 min)
  ]
)

#v(0.2cm)
*Achados relevantes:*
- Carbonização extensa dos pulmões
- Queimaduras de 3.º grau no esófago e estômago
- Necrose coagulativa térmica no fígado
- *Pele externa completamente intacta*
- *Vestes sem qualquer dano*

#v(0.2cm)
*Anomalia:* Esta mulher foi "cozinhada por dentro". Os órgãos internos apresentam lesões compatíveis com exposição a temperaturas superiores a *400°C*.

Mas a pele está intacta. O hábito que vestia está intacto. Não há fonte de calor na cozinha. O fogão estava desligado. Os detectores de fumo não dispararam.

É *fisicamente impossível*. O calor propaga-se do exterior para o interior. Não existe mecanismo conhecido que cause queimaduras internas sem queimaduras externas.

*Em 23 anos, nunca vi nada semelhante.*

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ VÍTIMA 3 ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[VÍTIMA 3: IRMÃ CARMO]
#v(0.15cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,

  [
    *Idade:* 65 anos\
    *Local:* Lavandaria\
    *Posição:* Ajoelhada, cabeça submersa em balde
  ],
  [
    *Causa de morte:* Asfixia por submersão (afogamento)\
    *Hora estimada:* *03:33* (± 15 min)
  ]
)

#v(0.2cm)
*Achados relevantes:*
- Cogumelo de espuma nas narinas — afogamento confirmado
- Água nos pulmões e estômago — vítima estava VIVA quando submersa
- Equimoses nos ombros — marcas de mãos *de tamanho infantil*
- Nenhuma marca de defesa nas mãos

#v(0.2cm)
*Anomalia:* O balde tinha 32 cm de altura. Continha *11 cm de água*.

Uma mulher adulta não se afoga em 11 cm de água. O reflexo de levantar a cabeça é automático. Ela podia simplesmente ter-se erguido. Podia ter derrubado o balde.

As marcas nos ombros indicam que alguém a empurrou para baixo e a manteve submersa. Mas:
- As marcas são de mãos de *CRIANÇA*
- A lavandaria estava trancada por dentro
- A chave estava no bolso da vítima
- Não há crianças que pudessem estar lá

*Quem a segurou debaixo de água? — Não sei.*

#pagebreak()

// ============ PÁGINA 2 ============

#align(center)[
  #text(size: 9pt, fill: rgb(100,100,100))[
    Polícia Judiciária — DLVT | Proc. 2847/2024 | Relatório Pericial — Sumário | Pág. 2/2
  ]
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ ANÁLISE TEMPORAL ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[ANÁLISE TEMPORAL]
#v(0.15cm)

As três mortes ocorreram à mesma hora: *03:33* da manhã.

Isto foi verificado por:
- Relógio de pulso da Vítima 1 (parou às 03:33, presume-se por impacto)
- Telemóvel da Vítima 2 (alarme não atendido às 03:33)
- Telemóvel da Vítima 3 (chamada não atendida às 03:33)

#block(fill: rgb(255, 250, 240), inset: 8pt, stroke: 0.5pt + rgb(200, 180, 150))[
  A coincidência temporal é extraordinária.

  Para um único perpetrador: *impossível* — três locais diferentes, simultaneamente.

  Para três perpetradores coordenados: não explica as impossibilidades físicas de cada morte.
]

#v(0.3cm)

// ============ PADRÕES ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[PADRÕES OBSERVADOS]
#v(0.15cm)

Ao analisar os três casos em conjunto, noto:

#table(
  columns: (0.5cm, 1fr),
  stroke: none,
  inset: 3pt,

  [1.], [*A mesma hora:* 03:33 — em todos os casos],
  [2.], [*Locais trancados:* Todas as portas trancadas por dentro],
  [3.], [*Ausência de terceiros:* Nenhuma evidência de presença humana],
  [4.], [*Mortes impossíveis:* Cada uma desafia explicação racional],
  [5.], [*Ausência de luta:* Nenhuma das vítimas resistiu significativamente],
)

#v(0.3cm)

// ============ NOTA PESSOAL ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[NOTA PESSOAL]
#v(0.15cm)

#block(fill: rgb(250, 250, 245), inset: 10pt, stroke: 0.5pt + gray)[
  #text(style: "italic", size: 9.5pt)[
    Não acredito em fenómenos sobrenaturais. Sou cientista. O meu trabalho é encontrar explicações racionais.

    Mas três mulheres morreram de formas que a ciência não explica. Ao mesmo segundo. Num orfanato isolado. Sem assassino identificável.

    A colega da Polícia Judiciária perguntou-me: "Dr. Ferreira, o que acha que aconteceu?"

    Respondi o que penso: "Não sei. Mas alguma coisa naquele orfanato quis que estas três mulheres morressem. E conseguiu."

    Ela perguntou: "Alguma coisa?"

    Eu disse: "Não disse alguém. Disse *alguma coisa*."

    Deixei-a a pensar.
  ]
]

#v(0.4cm)

// ============ RECOMENDAÇÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[RECOMENDAÇÃO]
#v(0.15cm)

#block(stroke: (left: 3pt + rgb(0, 51, 102)), inset: (left: 10pt, y: 5pt))[
  Sugiro que a investigação se concentre no *histórico da instituição*.

  Três freiras não morrem assim sem razão.

  #v(0.2cm)
  #text(weight: "bold")[
    O que aconteceu naquele orfanato?\
    O que é que elas fizeram?\
    E a quem?
  ]
]

#v(0.6cm)

// ============ ASSINATURA ============

#line(length: 100%, stroke: 0.5pt + gray)

#v(0.3cm)

#text(size: 9pt)[Sintra, 9 de Dezembro de 2024]

#v(0.5cm)

#line(length: 5cm, stroke: 0.5pt + black)
#text(size: 9pt)[
  *Dr. António Manuel Ferreira*\
  Especialista em Medicina Legal\
  Cédula Profissional n.º 32456\
  INMLCF, I.P. — Gabinete de Sintra
]

#v(0.5cm)

#align(center)[
  #text(size: 8pt, fill: rgb(150,150,150))[
    Documento classificado como: RELATÓRIO PERICIAL — SUMÁRIO\
    Para uso exclusivo da investigação
  ]
]
