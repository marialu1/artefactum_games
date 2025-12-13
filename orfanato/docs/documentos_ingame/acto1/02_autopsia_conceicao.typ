// Autópsia Médico-Legal - Irmã Conceição
// Documento para impressão - Acto 1

#set document(
  title: "Relatório de Autópsia - Conceição",
  author: "INMLCF"
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

// ============ CABEÇALHO OFICIAL INMLCF ============

#align(center)[
  #block(width: 100%, stroke: (bottom: 2pt + rgb(0, 51, 102)), inset: (bottom: 10pt))[
    #text(size: 7pt, fill: rgb(100,100,100))[MINISTÉRIO DA JUSTIÇA]\
    #v(3pt)
    #text(size: 12pt, weight: "bold", fill: rgb(0, 51, 102))[
      INSTITUTO NACIONAL DE MEDICINA LEGAL\
      E CIÊNCIAS FORENSES, I.P.
    ]\
    #v(3pt)
    #text(size: 9pt)[Gabinete Médico-Legal de Sintra]\
  ]
]

#v(0.4cm)

// ============ TÍTULO DO DOCUMENTO ============

#align(center)[
  #block(fill: rgb(0, 51, 102), width: 100%, inset: 8pt)[
    #text(size: 13pt, weight: "bold", fill: white)[
      RELATÓRIO DE AUTÓPSIA MÉDICO-LEGAL
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
      *N.º de Processo:* 2847/2024-GML-SNT\
      *N.º de Autópsia:* 847/2024\
      *Natureza:* Morte suspeita
    ]
  ],

  box(stroke: 0.5pt + gray, inset: 8pt, width: 100%)[
    #text(size: 9pt)[
      *Data:* 7 de Dezembro de 2024\
      *Hora início:* 09:15 | *Conclusão:* 11:42\
      *Perito:* Dr. António Manuel Ferreira
    ]
  ]
)

#v(0.4cm)

// ============ IDENTIFICAÇÃO DA VÍTIMA ============

#block(fill: rgb(245, 245, 250), inset: 10pt, stroke: (left: 3pt + rgb(0, 51, 102)))[
  #text(weight: "bold", size: 10pt)[IDENTIFICAÇÃO DA VÍTIMA]
  #v(0.2cm)
  #grid(
    columns: (1fr, 1fr),
    row-gutter: 4pt,

    [*Nome:*], [Maria da Conceição dos Santos Oliveira],
    [*Data de Nascimento:*], [14 de Março de 1956 (68 anos)],
    [*Naturalidade:*], [Mafra, Lisboa],
    [*Estado Civil:*], [Solteira],
    [*Profissão:*], [Religiosa (Irmã de caridade)],
    [*Residência:*], [Orfanato N.ª Sr.ª das Dores, Sintra],
    [*Documento:*], [BI n.º 05789432],
  )
]

#v(0.4cm)

// ============ CIRCUNSTÂNCIAS ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[1. CIRCUNSTÂNCIAS DA MORTE]
#v(0.15cm)

Corpo encontrado na *capela* do Orfanato Nossa Senhora das Dores, às 05:30 de 7/12/2024, pela funcionária Rosa Maria Marques.

Posição: decúbito ventral, a ~3 metros do altar-mor, face voltada para a entrada. Portas da capela trancadas pelo interior.

*Hora estimada da morte:* Entre as 03:00 e as 04:00.
*Nota:* Relógio de pulso da vítima parou às *03:33*.

#v(0.3cm)

// ============ EXAME EXTERNO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[2. EXAME DO HÁBITO EXTERNO]
#v(0.15cm)

*2.1 Descrição Geral*

Cadáver feminino, constituição magra, 162 cm, ~54 kg. Rigidez cadavérica generalizada. Livores de hipóstase na face anterior.

*Vestes:* Hábito religioso completo, intacto, sem rasgões ou sinais de violência.

*Objecto relevante:* Terço de madeira a 1,2m do corpo — crucifixo partido.

#v(0.2cm)
*2.2 Cabeça e Face*

#table(
  columns: (3cm, 1fr),
  stroke: 0.5pt + rgb(200, 200, 200),
  inset: 5pt,

  [*Região*], [*Achados*],
  [Parietal direita], [Hematoma extenso (8×6 cm) com tumefacção],
  [Occipital esquerda], [Segundo hematoma (5×4 cm)],
  [Frontal], [Terceiro hematoma (4×3 cm)],
  [Face], [Escoriações múltiplas, equimose periorbitária bilateral],
  [Cavidade oral], [Laceração do lábio, fractura de 2 incisivos],
)

*Expressão facial:* Contracção muscular compatível com estado de terror extremo no momento da morte.

#v(0.2cm)
*2.3 Tronco e Membros*

- *Tórax:* Equimose lateral direita (15×10 cm) — impacto contra superfície dura
- *Dorso:* Escoriação lombar (12 cm), hematoma escapular esquerdo
- *Mão direita:* Fracturas das falanges (2.º e 3.º dedos)
- *Mão esquerda:* Unhas intactas, sem material subungueal — ausência de defesa activa
- *Antebraço direito:* Fractura do rádio distal

#v(0.3cm)

// ============ EXAME INTERNO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[3. EXAME DO HÁBITO INTERNO]
#v(0.15cm)

*3.1 Crânio e Encéfalo*

- Fractura linear do parietal direito (9 cm, afundamento 0,5 cm)
- Fractura cominutiva do occipital esquerdo
- Hemorragia subdural bilateral (~150 ml)
- Contusões cerebrais múltiplas, ambos os hemisférios
- Hemorragia subaracnoideia presente

*Nota:* O padrão de fracturas cranianas é *inconsistente com uma única queda*. As lesões sugerem múltiplos impactos, de diferentes direcções e intensidades.

#v(0.2cm)
*3.2 Tórax e Abdómen*

- *Costelas:* Fracturas 5.ª, 6.ª e 7.ª direitas + 4.ª esquerda (posterior)
- *Pulmões:* Contusão lobo inferior direito, hemotórax (80 ml)
- *Fígado:* Laceração superficial lobo direito (2 cm)
- *Coração:* Petéquias no epicárdio

#v(0.3cm)

// ============ EXAMES COMPLEMENTARES ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[4. EXAMES COMPLEMENTARES]
#v(0.15cm)

#table(
  columns: (4cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 5pt,

  [*Alcoolémia*], [Negativa],
  [*Toxicologia*], [Negativa (painel completo)],
  [*Histopatologia*], [Pendente],
)

#pagebreak()

// ============ PÁGINA 2 ============

#align(center)[
  #text(size: 9pt, fill: rgb(100,100,100))[
    INMLCF — Gabinete Médico-Legal de Sintra | Proc. 2847/2024-GML-SNT | Pág. 2/2
  ]
]
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ DISCUSSÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[5. DISCUSSÃO]
#v(0.15cm)

O exame post-mortem revela um padrão de lesões traumáticas múltiplas que levanta questões significativas quanto ao mecanismo da morte.

*Achados Relevantes:*

+ *Múltiplos pontos de impacto craniano:* As três áreas distintas de traumatismo (parietal direita, occipital esquerda, frontal) são incompatíveis com queda única. Seria necessário embater em superfícies diferentes, de direcções opostas.

+ *Ausência de lesões defensivas:* Não foram encontradas marcas de agressão (ausência de material subungueal, sem contusões de imobilização).

+ *Lesões bilaterais simétricas:* Fracturas costais à direita e à esquerda, em zonas anteriores e posteriores — impactos de múltiplas direcções.

+ *Incompatibilidade com o local:* Corpo a 3m do altar, mas lesões incompatíveis com queda. Ponto mais alto acessível: púlpito (1,2m).

#v(0.2cm)
*Hipóteses Consideradas:*

#table(
  columns: (3cm, 1fr, 2.5cm),
  stroke: 0.5pt + gray,
  inset: 4pt,

  [*Hipótese*], [*Análise*], [*Conclusão*],
  [Queda acidental], [Padrão de lesões não explicável por queda única], [Improvável],
  [Agressão], [Sem evidências de luta, marcas de arma ou imobilização], [Sem evidência],
  [Episódio convulsivo], [Não explica força dos impactos; sem histórico], [Improvável],
)

#v(0.3cm)

*Observação do Perito:*

#block(fill: rgb(250, 250, 245), inset: 10pt, stroke: 0.5pt + gray)[
  #text(style: "italic", size: 9.5pt)[
    "Em 23 anos de prática médico-legal, nunca observei um padrão de lesões como este. As fracturas cranianas sugerem que a vítima foi projectada contra superfícies duras, múltiplas vezes, de diferentes direcções. No entanto, não há qualquer evidência de quem ou o quê teria causado essa projecção. As portas estavam trancadas pelo interior. A vítima estava só."
  ]
]

#v(0.4cm)

// ============ CAUSA DA MORTE ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[6. CAUSA DA MORTE]
#v(0.15cm)

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Causa imediata:*], [Traumatismo crânio-encefálico grave],
  [*Causa intermédia:*], [Múltiplos impactos cranianos contra superfícies duras],
  [*Causa fundamental:*], [*INDETERMINADA* — mecanismo incompatível com achados],
)

#v(0.3cm)

// ============ CLASSIFICAÇÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[7. CLASSIFICAÇÃO MÉDICO-LEGAL]
#v(0.15cm)

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Etiologia:*], [*INDETERMINADA*],
  [*Modo:*], [Não natural],
  [*Observações:*], [Circunstâncias requerem investigação adicional. Padrão não explicável por acidente, suicídio ou homicídio convencional.],
)

#v(0.4cm)

// ============ CONCLUSÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[8. CONCLUSÃO]
#v(0.15cm)

A signatária conclui que *Maria da Conceição dos Santos Oliveira*, 68 anos, faleceu em consequência de traumatismo crânio-encefálico grave resultante de múltiplos impactos.

O mecanismo permanece *indeterminado*:
- Não há evidência de terceiros
- Padrão incompatível com queda acidental
- Portas trancadas pelo interior
- Sem sinais de luta

Recomenda-se continuação da investigação e consulta de especialistas.

#v(0.6cm)

// ============ ASSINATURA ============

#line(length: 100%, stroke: 0.5pt + gray)
#v(0.2cm)

#text(size: 9pt)[Sintra, 7 de Dezembro de 2024]

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
    Documento original. Cópias autenticadas disponíveis mediante requisição formal ao INMLCF.
  ]
]
