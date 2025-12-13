// ============================================
// JAMES HARRODS - QUICK SHEET
// 9-page A5 booklet (saddle-stitch ready)
// ============================================

// === PAGE SETUP ===
#set page(
  width: 148mm,
  height: 210mm,
  margin: (top: 12mm, bottom: 12mm, left: 20mm, right: 20mm),
)

// === TEXT SETUP ===
#set text(
  font: "DejaVu Serif",
  size: 12pt,
  fill: rgb("#1a1a1a"),
  lang: "pt",
)

// === PARAGRAPH SETUP ===
#set par(
  justify: false,
  leading: 0.6em,
)

// === LIST SETUP ===
#set list(
  indent: 0.5em,
  body-indent: 0.5em,
)

// === FONTS ===
#let heading-font = "Great Vibes"
#let label-font = "Lato"

// === COLORS ===
#let vintage-brown = rgb("#704214")
#let vintage-black = rgb("#1a1a1a")
#let gold = rgb("#D4AF37")
#let cream = rgb("#FFFDF5")

// === CUSTOM FUNCTIONS ===

// Section title
#let section-title(content) = {
  text(
    font: heading-font,
    size: 28pt,
    fill: vintage-brown,
    weight: "extrabold",
    content
  )
  v(-1em)
}

// Ornamental divider
#let divider(size: "small") = {
  let width = if size == "tiny" {
    20mm
  } else if size == "small" {
    30mm
  } else if size == "medium" {
    40mm
  } else {
    30mm
  }
  
  align(center)[
    #line(length: width, stroke: 0.5pt + vintage-brown)
  ]
  v(2mm)
}

// ============================================
// PAGE 1: FRONT COVER (Transparent PNG)
// ============================================
#page(
  margin: 0mm,
  numbering: none,
  fill: cream,
)[
  #place(
    top + left,
    image(
      "covers/front_cover.png", 
      width: 100%, 
      height: 100%,
      fit: "contain"
    )
  )
]

// ============================================
// PAGE 2-8: INTERIOR PAGES (with page numbers)
// ============================================
#set page(
  margin: (top: 12mm, bottom: 50mm, left: 20mm, right: 20mm),
  footer: [
    #align(center)[
      #stack(
        spacing: 0mm,
        // Page number frame ornament
        image("assets/page_number_ornament.png", width: 150mm),
        v(-12mm),
        text(
          font: "DejaVu Serif",
          size: 10pt,
          fill: vintage-black
        )[#context counter(page).display("1")]
      )
    ]
  ]
)

// ============================================
// PAGE 2: IDENTITY
// ============================================

#v(1fr)
#align(center)[
  #section-title[Identity]

  #text(weight: "bold")[Name:]

  James Arthur Harrods

  #text(weight: "bold")[Age:]

  40 years old

  #text(weight: "bold")[Occupation:]

  Senior Investment Banker
  
  Harrods & Sterling Bank, Wall Street

  #text(weight: "bold")[Connection to Host:]

  Business associate - manages Reggie's investments. Professional relationship 2+ years (trusted client). Recent speakeasy partner with Filipp (\$8k investment).

  #v(1fr)
]

// ============================================
// PAGE 3: PERSONALITY & PERFORMANCE
// ============================================
#pagebreak()

#v(0.5fr)
#align(center)[
  #block(breakable: false)[
    #section-title[Personality & Performance]

    #text(weight: "bold")[Personality:]

    CONTROLLED - Always calm, measured, analytical

    PROFESSIONAL - Banker facade never cracks

    CALCULATING - Pauses before every answer

    DESPERATE - Hiding absolute terror beneath surface

    #v(0.3mm)

    #text(weight: "bold")[Mannerisms:]

    Checks pocket watch frequently (control)

    Twists wedding ring when nervous (guilt)

    Uses financial terms in normal conversation

    Long pauses before answering (calculating everything)

    #v(0.3mm)

    #text(weight: "bold")[Signature Phrases:]

    "In my professional opinion..." "We must consider the variables..."

    "Let's think logically..." "The prudent course would be..."
  ]

  #v(0.5fr)
]

// ============================================
// PAGE 4: PUBLIC SECRET
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Public Secret]

  #text(weight: "bold", fill: vintage-black)[Public Secret (can reveal freely):]

  I'm Reggie's investment manager (professional relationship). Client for 2+ years. Considerable portfolio. Recently: speakeasy partner with Filipp (\$8,000 invested).

  #v(1fr)
]

// ============================================
// PAGE 5: PRIVATE SECRETS (Secrets #1 & #2)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]

  #text(weight: "bold", fill: vintage-black)[Secret #1 - Financial Fraud (Dec 19):]

  Embezzled \$15,000 from Mrs. Whitmore's portfolio (elderly client). Speculative investment FAILED. Tried to cover with falsifications. Reggie DISCOVERED everything (Dec 19). Threatens prison Dec 26. No way out. Total exposure imminent.

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #2 - Affair with Helena (1 Year):]

  Love affair for 1 YEAR (Dec 1925 - Dec 1926). NOT casual fling - GENUINE love (first time feeling alive). Met in secret. Passionate. Real. Reggie discovered everything. Threatens public exposure. Would destroy marriage, career, social standing.

  #v(1fr)
]

// ============================================
// PAGE 6: PRIVATE SECRETS (Continued - Secret #3)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]
  #text(size: 10pt, style: "italic", fill: vintage-brown)[(continued)]

  #text(weight: "bold", fill: vintage-black)[Secret #3 - Total Desperation (Dec 20-24):]

  Reggie had COMPLETE power: prison + scandal + ruin. Deadline: Dec 26 (48h after Christmas). Everything would end. No visible options. Absolute desperation. Confessed to Father Juan Carlos (Dec 20). He couldn't help. Confession seal protects secrets, not me. Thought constantly: "He dies... or I lose EVERYTHING."

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #4 - Tonight's Calculation:]

  No specific plan. Just desperate logic. If Reggie dies: fraud might stay hidden, Helena safe, future possible. If Reggie lives: prison certain, scandal certain, ruin certain. Banker's risk assessment. Cold calculation vs hot desperation. Party = last hours before judgment day.

  #v(1fr)
]

// ============================================
// PAGE 7: GOALS + STATUS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Goals Tonight]

  Appear innocent (calm, professional, cooperative - respectable banker)

  Protect Emilia (she knows nothing, totally innocent, shield from horror)

  Hide Helena connection (no glances, no suspicious conversations, public distance)

  Control information (admit ONLY what's likely, deny rest, always logical)

  #v(0.8mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold")[Total desperation.]

  Reggie had power to destroy me completely. \$15K fraud + personal scandal = prison + total ruin. Deadline: December 26. No options. Absolute desperation.

  #v(1fr)
]

// ============================================
// PAGE 8: HOW TO PLAY
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[How to Play]

  #text(size: 11pt)[
    #text(weight: "bold")[Controlled performance:]

    ALWAYS calm, measured, professional (banker mode). Pauses before answering (calculate EVERYTHING). Never shout.

    #v(0.5mm)

    #text(weight: "bold")[Physical tells (IMPORTANT!):]

    Ring: Twist when nervous/lying. Watch: Check when need control. Throat: Clear before lying (buying time). LET other players NOTICE!

    #v(0.5mm)

    #text(weight: "bold")[Voice & language:]

    Moderate tone, clear diction. Financial terms frequent. "Variables", "prudent", "logic", "consider options".

    #v(0.5mm)

    #text(weight: "bold")[When pressed:]

    Voice gets MORE CALM (not louder). More formal, more distant. "Professional opinion...". LONG pauses. Ring twisting intensifies.

    #v(0.5mm)

    #text(weight: "bold")[Social strategy:]

    Boring = invisible. Helpful but forgettable. Admit fraud IF discovered (lesser of two evils). DENY affair until impossible to deny. Protect Helena always.
  ]

  #v(1fr)
]

// ============================================
// PAGE 9: RELATIONSHIPS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Key Relationships]

  #text(weight: "bold")[Reginald Ashford (Victim/Client):]

  Client who became threat. Discovered everything. Total power over my life.

  #v(0.5mm)

  #text(weight: "bold")[Helena Ashford (Hostess/Secret Love):]

  True love. One year affair. Reggie knows. Avoid public conversations. Protect her always.

  #v(0.5mm)

  #text(weight: "bold")[Emilia Harrods (Wife):]

  Good woman. Devoted mother. Completely innocent. Knows nothing. Must protect from truth.

  #v(0.5mm)

  #text(weight: "bold")[Filipp Moretti (Business Partner):]

  Speakeasy partner. \$8k invested. Pure business. Doesn't know personal troubles.

  #v(0.5mm)

  #text(weight: "bold")[Father Juan Carlos, Maria Fletcher, Others:]

  Confessor - knows secrets. Journalist - dangerous. Watch what you reveal to everyone.

  #v(1fr)
]

// ============================================
// PAGE 10: BACK COVER (Transparent PNG)
// ============================================
#page(
  margin: 0mm,
  numbering: none,
  footer: none,
  fill: cream,
)[
  #place(
    top + left,
    image(
      "covers/back_cover.png", 
      width: 100%, 
      height: 100%,
      fit: "contain"
    )
  )
]
