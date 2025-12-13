#set page(
  paper: "a5",
  margin: (top: 10mm, bottom: 10mm, left: 8mm, right: 8mm),
  numbering: none,
)

#set text(
  font: "Crimson Text",
  size: 8pt,
  fallback: true,
)

#set par(
  justify: true,
  leading: 0.5em,
)

// PAGE 1 - FRONT COVER
#page(
  margin: 0mm,
  fill: white,
)[
  #v(1fr)
  #align(center)[
    #text(size: 16pt, weight: "bold")[
      HELENA \
      JOGADOR MESTRE \
      CHEAT SHEET GUIDE
    ]
  ]
  #v(1fr)
]

// PAGE 2 - INTERIOR LEFT
#page[
  #set text(size: 7.5pt)
  
  #align(center)[
    #text(size: 14pt, weight: "bold")[HELENA - GAME NIGHT CHEAT SHEET]
    
    #text(size: 7pt, style: "italic")[PLASTIFICA! Keep visible but hidden from players]
  ]
  
  #v(3mm)
  
  #align(center)[
    = TIMING CRÍTICO
  ]
  
  #align(center)[
  #table(
    columns: (25mm, 40mm, auto),
    inset: 2pt,
    stroke: 0.5pt,
    align: center,
    [*Hora*], [*Ação*], [*Teu Papel*],
    [19h45], [Chegada], [Hostess warm],
    [20h00], [Início], [Boas-vindas],
    [20h05], [Daisy canta], [Applaud],
    [20h09], [LEVA REGGIE], ["Vem, surpresa..."],
    [20h11], [ASSASSINATO], [(offstage)],
    [20h18], [*GRITA*], [*"REEEGGIIEEE!"*],
    [20h30], [Tier 1], [9 envelopes],
    [21h00-21h45], [Investigação], [Character + GM],
    [21h45], [*PAUSA*], [15min break],
    [22h00], [Tier 3], [Mordomo, forensics],
    [22h30], [Emilia suicide], [Manage exit],
    [22h50], [Votação], [Defend/confess],
    [23h00], [Revelação], [Full confession],
    [23h20], [Twist letter], [Inheritance!],
  )
  ]
  
  #v(2mm)
  
  #align(center)[
    = TIER 1 - DISTRIBUIR 20h30
  ]
  
  #align(center)[
  #text(size: 7pt)[
    *9 Envelopes:* JC (floor plan), James (fraud), Emilia (invitation), Daisy (breakup), Maria (clipping), Padre (confession), Filipp (receipt), Claire (certificate), Esmeralda (blackmail), *TU* (divorce)
  ]
  ]
  
  #v(2mm)
  
  #align(center)[
    = TIER 2 - HIDDEN (Players Find)
  ]
  
  #align(center)[
  #columns(2, gutter: 3mm)[
    *TRUE CLUES:*
    - Piano wire COM SANGUE
    - Handkerchief "H+J"
    - Blood stain (carpet)
    - Gray button (James)
    
    #colbreak()
    
    *RED HERRINGS:*
    - Lipstick glass (Daisy)
    - Manuscript (Maria)
    - Torn letter (Filipp)
    - Telegram, rosary
  ]
  ]
  
  #v(2mm)
  
  #align(center)[
    = TIER 3 - TU REVELAR
  ]
  
  #align(center)[
  *22h00 - Mordomo (Ricardo):* \
  "20h09: Mrs. Ashford levou master ao office. 20h17: Saiu sozinha, pálida."
  
  *22h10 - Forensics (JC):* \
  "Ligature marks. NOT drowning. TWO attackers."
  
  *22h20 - Ledger:* \
  "Dec 19: J. Harrods fraud. Dec 17: H. affair."
  ]
  
  #v(2mm)
  
  #align(center)[
    = PERFORMANCE - 3 LAYERS
  ]
  
  #align(center)[
  *SURFACE:* Shocked widow, trembling \
  *MICRO-TELLS:* Olhar James, flinch "office", avoid Emilia \
  *HIDDEN:* Relief + Terror + Guilt (never show)
  ]
]

// PAGE 3 - INTERIOR RIGHT
#page[
  #set text(size: 7.5pt)
  
  #align(center)[
    = DEFENSE STRATEGIES
  ]
  
  #align(center)[
  *Se acusam inheritance:* \
  "Married 4 years, insurance is normal! How DARE you!"
  
  *Se encontram H+J:* \
  "Not mine. H could be Helen, Harriet?"
  
  *Se pressionam office:* \
  "YES! For his GIFT! Why would I hurt him?!" [tears]
  
  *ÚLTIMA DEFESA (top 3):* \
  "I lived with him 4 years. You think I'd throw that away? Someone HATED him. And God knows there were plenty."
  ]
  
  #v(2mm)
  
  #align(center)[
    = EMILIA SUICIDE (~22h30)
  ]
  
  #align(center)[
  When Cris exits: Wait 3min - "Wait... onde está a Cristina?" - Find NOTE - Read aloud - React: "Cristina... não..." [genuine guilt] - "O jogo continua."
  ]
  
  #v(2mm)
  
  #align(center)[
    = TWIST LETTER (~23h20)
  ]
  
  #align(center)[
  *Key Points:* Grandmother 80k inheritance, Reggie HID it, could've divorced FREE, crime UNNECESSARY, money to Claire + Esmeralda
  
  *Tua Reação:* \
  "I was an heiress? Could have divorced. Been free. We didn't need to kill him. Cristina died because I didn't know I was RICH. Claire and Esmeralda inherit. The daughters he abandoned. [bitter laugh] He wins. Even dead, he WINS."
  ]
  
  #v(2mm)
  
  #align(center)[
    = ACT V - CONFESSION
  ]
  
  #align(center)[
  Stand, drop performance, HONEST:
  
  "Yes. We did it. Together. Four years com ele. You saw parties. You didn't see him control every dollar, every friend, every breath. You didn't see how he made me feel OWNED. Then I met James. And I felt alive. So yes. We killed him. For love. For freedom. Was it worth it?" [look at Emilia's chair] "Ask me again."
  ]
  
  #v(2mm)
  
  #align(center)[
    = EMERGENCIES
  ]
  
  #align(center)[
  *Lost?* - "Has anyone checked behind the piano?" \
  *Too early?* - Deny + red herring \
  *Give up?* - Extra Tier 2 clue \
  *Upset?* - PAUSE: "5min break. Everyone okay?" \
  *Over time?* - Speed up Act V
  ]
  
  #v(2mm)
  
  #align(center)[
    = PRÉ-GAME CHECKLIST
  ]
  
  #align(center)[
  #columns(2, gutter: 3mm)[
    #text(size: 6.5pt)[
      - 9 Tier 1 envelopes
      - 14 Tier 2 hidden
      - 3 Tier 3 printed
      - Emilia suicide note
      - Reggie twist letter
    ]
    
    #colbreak()
    
    #text(size: 6.5pt)[
      - Ricardo briefed
      - Timer ready
      - Water for you
      - This sheet accessible
    ]
  ]
  ]
  
  #v(2mm)
  
  #align(center)[
    = KEY PHRASES
  ]
  
  #align(center)[
  *Descoberta:* "REEEGGIIEEE!" [piercing] \
  *Distribuição:* "Encontrei isto..." \
  *Acusada:* "Como OUSA?!" [fierce] \
  *Confissão:* "Yes. We did it. Together." \
  *Twist:* "I was an heiress... didn't know."
  ]
  
  #v(3mm)
  
  #align(center)[
    #text(size: 9pt, weight: "bold")[YOU'VE GOT THIS.]
    
    #text(size: 6.5pt, style: "italic")[
      Trust your prep. Trust your instincts. Se algo corre mal - IMPROVISE.
    ]
  ]
]

// PAGE 4 - BACK COVER (BLANK)
#page(
  margin: 0mm,
  fill: white,
)[
  // Intentionally blank
]
