// Autópsia Médico-Legal - Irmã Carmo
// Documento para impressão - Acto 1

#set document(
  title: "Relatório de Autópsia - Carmo",
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

// ============ TÍTULO ============

#align(center)[
  #block(fill: rgb(245, 245, 250), width: 100%, inset: 10pt, stroke: 0.5pt + rgb(0, 51, 102))[
    #text(size: 12pt, weight: "bold", fill: rgb(0, 51, 102))[
      RELATÓRIO DE AUTÓPSIA MÉDICO-LEGAL
    ]
    #v(3pt)
    #text(size: 9pt)[
      Autópsia n.º 849/2024
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
      *N.º de Autópsia:* 849/2024\
      *Perito Responsável:* Dr. António M. Ferreira\
      *Técnico Auxiliar:* Carla Sofia Martins
    ]
  ],

  box(stroke: 0.5pt + gray, inset: 8pt, width: 100%)[
    #text(size: 9pt)[
      *Data:* 8 de Dezembro de 2024\
      *Hora de Início:* 08:30\
      *Hora de Conclusão:* 10:45\
      *Duração:* 2h15
    ]
  ]
)

#v(0.4cm)

// ============ IDENTIFICAÇÃO DA VÍTIMA ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[IDENTIFICAÇÃO DA VÍTIMA]
#v(0.1cm)

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + rgb(200, 200, 200),
  inset: 5pt,
  row-gutter: 4pt,

  [*Nome:*], [Maria do Carmo Rodrigues Oliveira],
  [*Data de Nascimento:*], [3 de Outubro de 1959 (65 anos)],
  [*Naturalidade:*], [Leiria],
  [*Estado Civil:*], [Solteira],
  [*Profissão:*], [Religiosa (Irmã de caridade)],
  [*Residência:*], [Orfanato N.ª Sr.ª das Dores, Sintra],
  [*Documento ID:*], [CC n.º 09876234 5 ZX8],
)

#v(0.4cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ CIRCUNSTÂNCIAS ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[1. CIRCUNSTÂNCIAS DA MORTE]
#v(0.15cm)

Corpo encontrado na *lavandaria* do Orfanato Nossa Senhora das Dores, às 06:10 de 7/12/2024, pelo caseiro Manuel António Silva, durante busca sistemática após descoberta dos dois primeiros corpos.

A vítima foi encontrada de joelhos, tronco inclinado para a frente, *cabeça completamente submersa num balde de plástico*. Braços ao longo do corpo, sem sinais de tentativa de apoio ou elevação.

*Hora estimada da morte:* Entre as 03:00 e as 04:00.

*Nota:* O telemóvel da vítima registou uma chamada não atendida às *03:33* (número interno do orfanato — sem registo de quem efectuou).

#v(0.2cm)

*Descrição do Balde:*

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 5pt,

  [Material], [Plástico (polietileno)],
  [Altura total], [32 cm],
  [Diâmetro superior], [30 cm],
  [*Nível da água*], [*11 cm*],
  [Volume de água], [~8 litros],
  [Posição], [Centro da lavandaria, sem apoio],
)

#v(0.2cm)

*Nota da Autoridade Policial:*

#block(fill: rgb(255, 250, 245), inset: 8pt, stroke: 0.5pt + rgb(200, 180, 150))[
  GNR Sintra confirma que a lavandaria estava *trancada pelo interior*. A única chave estava no bolso do hábito da vítima. Não foram encontrados sinais de entrada forçada ou presença de terceiros.
]

#v(0.3cm)

// ============ EXAME EXTERNO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[2. EXAME DO HÁBITO EXTERNO]
#v(0.15cm)

*2.1 Descrição Geral*

Cadáver feminino, constituição média, 165 cm, ~63 kg. Rigidez cadavérica em resolução. Livores de hipóstase nas regiões anteriores dos membros inferiores (compatível com posição ajoelhada).

*Vestes:* Hábito religioso completo. Vestes húmidas na região do peito e ombros. Joelhos com manchas de humidade consistentes com posição ajoelhada em chão molhado.

#v(0.2cm)
*2.2 Cabeça e Face*

#table(
  columns: (3cm, 1fr),
  stroke: 0.5pt + rgb(200, 200, 200),
  inset: 5pt,

  [*Achado*], [*Descrição*],
  [Cabelo], [Molhado. Sem lesões no couro cabeludo.],
  [Face], [*Cianose facial marcada* (coloração azulada). Edema palpebral.],
  [Conjuntivas], [Congestão bilateral. *Petéquias presentes* — asfixia confirmada.],
  [Espuma], [*Cogumelo de espuma* nas narinas e boca — sinal clássico de afogamento.],
)

#v(0.2cm)
*2.3 ACHADO SIGNIFICATIVO — Ombros*

Marcas bilaterais nos ombros:

- *Ombro direito:* Duas equimoses ovaladas (3×2 cm cada), dispostas lado a lado, consistentes com pressão digital.
- *Ombro esquerdo:* Duas equimoses semelhantes, em posição simétrica.

*Padrão:* As marcas são consistentes com mãos pequenas pressionando ambos os ombros simultaneamente, de cima para baixo.

#block(fill: rgb(255, 250, 240), inset: 8pt, stroke: 0.5pt + gray)[
  *Medição das equimoses:* A distância entre as marcas e o seu tamanho são consistentes com *mãos de criança* (aproximadamente 8-10 anos), NÃO com mãos de adulto.
]

#v(0.2cm)
*2.4 Restante Exame Externo*

- *Pescoço:* Sem marcas de estrangulamento ou compressão.
- *Tórax e abdómen:* Sem lesões externas.
- *Mãos:* Maceração cutânea ligeira (imersão). *Unhas intactas. Ausência de marcas de defesa.* Não há sinais de que a vítima tenha tentado agarrar o bordo do balde.
- *Joelhos:* Eritema ligeiro bilateral, consistente com pressão prolongada.

#v(0.3cm)

// ============ EXAME INTERNO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[3. EXAME DO HÁBITO INTERNO]
#v(0.15cm)

*3.1 Vias Aéreas*

- *Traqueia e brônquios:* Presença abundante de *líquido espumoso rosado* — sinal cardinal de afogamento.
- Ausência de obstrução mecânica.

*3.2 Pulmões*

- Aumentados de volume, hiperinsuflados
- Peso: Pulmão direito 680g; Pulmão esquerdo 610g (aumentados)
- Equimoses subpleurais (manchas de Tardieu)
- Ao corte: saída abundante de líquido espumoso
- Teste docimasiano: Positivo (pulmões flutuam)

*3.3 Estômago*

- Conteúdo: ~150 ml de líquido aquoso
- Presença de água deglutida — confirma *afogamento vital* (vítima viva quando submersa)

*3.4 Coração*

- Câmaras direitas dilatadas, repletas de sangue escuro e fluido
- Sangue fluido, escuro — compatível com asfixia

#pagebreak()

// ============ PÁGINA 2 ============

#align(center)[
  #text(size: 9pt, fill: rgb(100,100,100))[
    INMLCF — Gabinete Médico-Legal de Sintra | Proc. 2847/2024-GML-SNT | Aut. 849/2024 | Pág. 2/2
  ]
]

#v(0.3cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ EXAMES COMPLEMENTARES ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[4. EXAMES COMPLEMENTARES]
#v(0.15cm)

#table(
  columns: (4cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 5pt,

  [*Exame*], [*Resultado*],
  [Alcoolémia], [Negativa],
  [Toxicologia], [Negativa (painel completo, incluindo sedativos)],
  [Diatomáceas], [Pesquisa em curso],
  [Análise da água], [Água da rede pública, sem substâncias anómalas],
)

#v(0.3cm)

// ============ DISCUSSÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[5. DISCUSSÃO]
#v(0.15cm)

*Confirmação de Afogamento:*

Os achados são inequívocos para afogamento como causa de morte: cogumelo de espuma, edema pulmonar, água no estômago, sinais de asfixia. A vítima estava *viva* quando a submersão ocorreu.

#v(0.2cm)
*O Problema — Impossibilidade Física:*

Um ser humano adulto, consciente e sem incapacidade, *não consegue afogar-se num balde com 11 cm de água*.

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 5pt,

  [*Factor*], [*Análise*],
  [Reflexo de sobrevivência], [O reflexo de levantar a cabeça é automático e extremamente poderoso],
  [Capacidade física], [Mulher de 65 anos, 63 kg, tem força para se erguer],
  [Posição do balde], [Não estava encostado a nada — poderia tê-lo derrubado],
  [Incapacitação], [Toxicologia negativa. Sem lesões de perda de consciência],
)

#v(0.2cm)
*As Marcas nos Ombros:*

As equimoses indicam que *alguém pressionou a vítima para baixo*. No entanto:
- Tamanho consistente com *mãos de criança*, não de adulto
- Não há crianças no orfanato com acesso à lavandaria durante a noite
- Porta trancada pelo interior
- Sem marcas de defesa — a vítima não lutou

#v(0.2cm)
*Observação do Perito:*

#block(fill: rgb(250, 250, 245), inset: 10pt, stroke: 0.5pt + gray)[
  #text(style: "italic", size: 9.5pt)[
    "É a terceira autópsia em 24 horas de freiras deste orfanato. As três mortes ocorreram aparentemente no mesmo período — entre as 03:00 e as 04:00.

    Neste caso específico: uma mulher adulta afogou-se em 11 cm de água, com marcas de mãos de criança nos ombros, numa sala trancada por dentro, sem sinais de luta.

    Não tenho explicação racional para o que observo."
  ]
]

#v(0.3cm)

// ============ CAUSA DA MORTE ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[6. CAUSA DA MORTE]
#v(0.15cm)

#table(
  columns: (3.5cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Causa imediata:*], [Asfixia por submersão (afogamento)],
  [*Causa intermédia:*], [Submersão forçada da cabeça em recipiente com água],
  [*Causa fundamental:*], [*INDETERMINADA* — mecanismo incompatível com circunstâncias],
)

#v(0.3cm)

// ============ CLASSIFICAÇÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[7. CLASSIFICAÇÃO MÉDICO-LEGAL]
#v(0.15cm)

#table(
  columns: (3cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Etiologia:*], [*INDETERMINADA* (elementos sugestivos de homicídio, mas sem identificação de agente)],
  [*Modo:*], [Não natural],
  [*Observações:*], [Submersão forçada evidente. Marcas incompatíveis com adulto. Sala trancada por dentro. Terceiro caso inexplicável do mesmo local em 24 horas.],
)

#v(0.3cm)

// ============ CONCLUSÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[8. CONCLUSÃO]
#v(0.15cm)

A signatária conclui que *Maria do Carmo Rodrigues Oliveira*, 65 anos, faleceu por afogamento, tendo sido a submersão forçada, conforme evidenciado pelas marcas de pressão nos ombros.

O caso apresenta características que desafiam explicação racional:
- Afogamento em recipiente com apenas *11 cm de água*
- Marcas de mãos de *tamanho infantil* nos ombros
- Sala trancada pelo interior, sem terceiros identificados
- Ausência total de sinais de luta ou resistência
- Toxicologia negativa (vítima consciente)

Este é o terceiro caso inexplicável proveniente do mesmo local nas últimas 24 horas. Todos ocorreram aproximadamente à mesma hora: *03:33*.

#v(0.6cm)

// ============ ASSINATURA ============

#line(length: 100%, stroke: 0.5pt + gray)

#v(0.3cm)

#text(size: 9pt)[Sintra, 8 de Dezembro de 2024]

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
    Documento original. Terceiro de três casos relacionados. Recomenda-se investigação coordenada.
  ]
]
