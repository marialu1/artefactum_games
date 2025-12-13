// Autópsia Médico-Legal - Irmã Beatriz
// Documento para impressão - Acto 1

#set document(
  title: "Relatório de Autópsia - Beatriz",
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
      Autópsia n.º 848/2024
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
      *N.º de Autópsia:* 848/2024\
      *Perito Responsável:* Dr. António M. Ferreira\
      *Técnico Auxiliar:* Carla Sofia Martins
    ]
  ],

  box(stroke: 0.5pt + gray, inset: 8pt, width: 100%)[
    #text(size: 9pt)[
      *Data:* 7 de Dezembro de 2024\
      *Hora de Início:* 14:20\
      *Hora de Conclusão:* 17:05\
      *Duração:* 2h45
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

  [*Nome:*], [Maria Beatriz da Assunção Figueiredo],
  [*Data de Nascimento:*], [22 de Agosto de 1952 (72 anos)],
  [*Naturalidade:*], [Coimbra],
  [*Estado Civil:*], [Solteira],
  [*Profissão:*], [Religiosa (Irmã de caridade)],
  [*Residência:*], [Orfanato N.ª Sr.ª das Dores, Sintra],
  [*Documento ID:*], [CC n.º 08432156 7 ZY2],
)

#v(0.4cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.3cm)

// ============ CIRCUNSTÂNCIAS ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[1. CIRCUNSTÂNCIAS DA MORTE]
#v(0.15cm)

Corpo encontrado na *cozinha* do Orfanato Nossa Senhora das Dores, às 05:45 de 7/12/2024, pela funcionária Rosa Maria Marques, após descoberta do primeiro corpo na capela.

A vítima foi encontrada *sentada numa cadeira* junto à mesa central, cabeça tombada para a frente. Não havia sinais de fogo, fumo ou qualquer fonte de calor activa. O fogão estava desligado. Não foram detectadas fugas de gás.

*Hora estimada da morte:* Entre as 03:00 e as 04:00.

*Nota:* Telemóvel da vítima (Nokia antigo) registou última actividade — alarme não atendido — às *03:33*.

#v(0.2cm)

*Observação do local:*

#block(fill: rgb(255, 250, 245), inset: 8pt, stroke: 0.5pt + rgb(200, 180, 150))[
  Forte odor a carne queimada presente na cozinha, apesar de *ausência de qualquer fonte de combustão visível*. Detectores de fumo não foram activados. Perícia técnica ao sistema eléctrico e de gás não revelou anomalias.
]

#v(0.3cm)

// ============ EXAME EXTERNO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[2. EXAME DO HÁBITO EXTERNO]
#v(0.15cm)

*2.1 Descrição Geral*

Cadáver feminino, constituição robusta, 158 cm, ~71 kg. Rigidez cadavérica presente. Livores de hipóstase nas regiões posteriores dos membros inferiores e nádegas, compatíveis com posição sentada.

*Vestes:* Hábito religioso completo. Vestes *completamente intactas* — sem qualquer sinal de queimadura, chamuscamento ou dano térmico.

#v(0.2cm)
*2.2 Cabeça e Face*

#table(
  columns: (3cm, 1fr),
  stroke: 0.5pt + rgb(200, 200, 200),
  inset: 5pt,

  [*Região*], [*Achados*],
  [Pele], [Intacta. Coloração normal. *Ausência total de queimaduras externas.*],
  [Cabelo], [Intacto, sem sinais de chamuscamento],
  [Olhos], [Córneas ligeiramente opacas. Pupilas midriáticas bilaterais],
  [Face], [Expressão de *dor intensa* preservada nos músculos faciais],
  [Cavidade oral], [Mucosas intactas. Língua sem lesões visíveis],
)

#v(0.2cm)
*2.3 Tronco e Membros*

- *Pescoço:* Sem lesões externas. Pele intacta.
- *Tórax:* Pele intacta. Sem queimaduras visíveis. Sem eritema.
- *Abdómen:* Pele intacta. Distensão abdominal moderada. À palpação, sensação de crepitação gasosa.
- *Dorso:* Sem lesões externas.
- *Membros:* Sem lesões externas em membros superiores ou inferiores.

#v(0.3cm)

// ============ EXAME INTERNO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[3. EXAME DO HÁBITO INTERNO]
#v(0.15cm)

*NOTA PRÉVIA:* Os achados internos descritos nesta secção são, no conhecimento do signatário, sem precedente na literatura médico-legal. Foi solicitada documentação fotográfica extensiva e preservação de amostras.

#v(0.2cm)
*3.1 Cavidade Torácica*

À abertura do tórax:
- *Odor:* Intenso cheiro a carne carbonizada
- *Coloração:* Tecidos internos apresentam coloração enegrecida

*Pulmões:*
- Ambos apresentam *carbonização extensa* do parênquima
- Lobo superior direito: destruição quase total, textura friável, coloração negra
- Lobo inferior esquerdo: carbonização de ~70% do tecido
- Brônquios principais: mucosa carbonizada
- *Não há presença de fuligem nas vias aéreas superiores* (ausência de inalação de fumo)

*Coração:*
- Miocárdio com áreas de *necrose coagulativa* compatível com exposição a calor extremo
- Coronárias pérvias, sem obstruções
- Pericárdio intacto

*Esófago:*
- Mucosa com *queimaduras de 3.º grau* em toda a extensão torácica
- Necrose transmural em múltiplos pontos

#v(0.2cm)
*3.2 Cavidade Abdominal*

*Estômago:*
- Mucosa gástrica com *queimaduras extensas*
- Conteúdo gástrico: material alimentar parcialmente carbonizado
- Perfuração de 2 cm na grande curvatura, bordos necrosados

*Fígado:*
- Superfície externa intacta
- Ao corte: áreas multifocais de *necrose coagulativa*, padrão compatível com lesão térmica

*Intestino delgado:*
- Múltiplas áreas de necrose transmural
- Conteúdo intestinal com aspecto carbonizado

#pagebreak()

// ============ PÁGINA 2 ============

#align(center)[
  #text(size: 9pt, fill: rgb(100,100,100))[
    INMLCF — Gabinete Médico-Legal de Sintra | Proc. 2847/2024-GML-SNT | Aut. 848/2024 | Pág. 2/2
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
  [Toxicologia (painel completo)], [Negativa],
  [*Carboxihemoglobina*], [*Negativa* — confirma ausência de inalação de fumo],
  [Histopatologia], [Confirma necrose coagulativa térmica em múltiplos órgãos],
)

#v(0.2cm)
*Análise Térmica (solicitada ao LPC):*

Resultados preliminares indicam que a temperatura necessária para causar as lesões observadas seria superior a *400°C* no interior do corpo. Não foi identificada nenhuma fonte de calor no local capaz de gerar estas temperaturas.

#v(0.3cm)

// ============ DISCUSSÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[5. DISCUSSÃO]
#v(0.15cm)

*Resumo dos Achados:*

+ *Lesões térmicas internas graves:* Carbonização pulmonar, queimaduras esofágicas e gástricas, necrose hepática.
+ *Ausência total de lesões externas:* Pele intacta em toda a superfície corporal. Vestes sem danos.
+ *Ausência de inalação de fumo:* Carboxihemoglobina negativa. Vias aéreas superiores sem fuligem.
+ *Ausência de fonte de calor:* Nenhuma fonte de ignição, combustão ou aquecimento identificada.

#v(0.2cm)
*Hipóteses Consideradas:*

#table(
  columns: (3.5cm, 1fr, 2cm),
  stroke: 0.5pt + gray,
  inset: 4pt,

  [*Hipótese*], [*Análise*], [*Conclusão*],
  [Incêndio], [Ausência de lesões externas, vestes intactas, detectores não activados], [Rejeitada],
  [Ingestão líquido quente], [Não explica lesões pulmonares; escala incompatível], [Rejeitada],
  [Microondas/RF], [Não existe equipamento; padrão de lesões diferente], [Rejeitada],
  [Combustão espontânea], [Fenómeno não comprovado; casos reportados envolvem destruição externa], [Rejeitada],
  [Reacção química], [Nenhum agente identificado na toxicologia], [Rejeitada],
)

#v(0.2cm)
*Observação do Perito:*

#block(fill: rgb(250, 250, 245), inset: 10pt, stroke: 0.5pt + gray)[
  #text(style: "italic", size: 9.5pt)[
    "Não consigo explicar, dentro dos parâmetros da ciência médica conhecida, como esta mulher sofreu queimaduras internas fatais sem qualquer lesão externa. O corpo apresenta-se como se tivesse sido 'cozinhado por dentro' enquanto a superfície externa permaneceu intacta.

    As leis da física e da termodinâmica exigem que o calor se propague do exterior para o interior. Não há registo médico ou científico de lesões térmicas internas sem lesões térmicas externas correspondentes.

    Após 23 anos de prática, nunca vi nada semelhante."
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

  [*Causa imediata:*], [Falência multiorgânica por lesões térmicas internas extensas],
  [*Causa intermédia:*], [Carbonização pulmonar e necrose visceral por exposição a calor extremo],
  [*Causa fundamental:*], [*INDETERMINADA* — fonte e mecanismo de exposição térmica desconhecidos],
)

#v(0.3cm)

// ============ CLASSIFICAÇÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[7. CLASSIFICAÇÃO MÉDICO-LEGAL]
#v(0.15cm)

#table(
  columns: (3cm, 1fr),
  stroke: 0.5pt + gray,
  inset: 6pt,

  [*Etiologia:*], [*INDETERMINADA*],
  [*Modo:*], [Não natural],
  [*Observações:*], [Caso sem precedente. Lesões internas incompatíveis com qualquer mecanismo conhecido. Sinalizado para revisão pelo Conselho Médico-Legal Nacional.],
)

#v(0.3cm)

// ============ CONCLUSÃO ============

#text(weight: "bold", size: 10pt, fill: rgb(0, 51, 102))[8. CONCLUSÃO]
#v(0.15cm)

A signatária conclui que *Maria Beatriz da Assunção Figueiredo*, 72 anos, faleceu em consequência de lesões térmicas internas extensas que resultaram em falência multiorgânica.

O mecanismo permanece *cientificamente inexplicável*:
- Órgãos internos carbonizados
- Pele e vestes completamente intactas
- Ausência de fonte de calor identificada
- Ausência de inalação de fumo

Este caso requer investigação adicional por entidades especializadas.

#v(0.6cm)

// ============ ASSINATURA ============

#line(length: 100%, stroke: 0.5pt + gray)

#v(0.3cm)

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
    Documento original. Este caso foi sinalizado para revisão pelo Conselho Médico-Legal Nacional.
  ]
]
