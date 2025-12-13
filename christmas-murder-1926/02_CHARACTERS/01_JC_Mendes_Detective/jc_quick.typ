// ============================================
// JOHN ALFRED JONES - QUICK SHEET
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
  lang: "en",
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

  John Alfred Jones

  #text(weight: "bold")[Age:]

  45 years

  #text(weight: "bold")[Profession:]

  Former NYPD Detective (20 years)
  
  Private Investigator (since 1921)

  #text(weight: "bold")[Connection to Host:]

  Hired by Helena (Nov 1926) as security consultant. \$200 contract. Tonight = LAST night. Columbo-style investigator.

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

    HUMBLE (weaponized) - "Sorry to bother..."

    OBSERVANT - Notices everything

    PATIENT - Time is weapon

    EMPATHETIC - Understands people

    PRINCIPLED - Truth over career

    #v(0.3mm)

    #text(weight: "bold")[Mannerisms:]

    Notebook ritual (writes slow, thinks fast)

    Apologetic posture (non-threatening)

    Strategic pauses (let silences work)

    "The Turn" (leaves, stops: "One more thing...")

    #v(0.3mm)

    #text(weight: "bold")[Signature Phrases:]

    "Just one more question..."

    "I'm probably confused, but..."

    "Help me understand..."

    "My wife used to say..."
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

  #text(weight: "bold", fill: vintage-black)[Public Secret (reveal freely):]

  Former NYPD detective (20 years, murder cases). Retired 1921, now private investigator. Helena hired you Nov 1926 as security (\$200, 1-month contract). Tonight = LAST NIGHT. This gives you AUTHORITY to investigate.

  #v(1fr)
]

// ============================================
// PAGE 5: GOALS + STATUS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Goals Tonight]

  Solve murder (killers, method, motive, proof)

  Manage game (pace, screen time for all)

  Protect innocents (clear false suspects)

  Honor code (truth over comfort)

  #v(0.8mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold")[NO. You are INVESTIGATOR.]

  Professional mode. Your role: SOLVE crime, reveal truth.

  #v(1fr)
]

// ============================================
// PAGE 6: HOW TO PLAY
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[How to Play]

  #text(weight: "bold")[Columbo always:]

  Humble look, sharp mind. "Sorry..." while solving.

  #v(0.5mm)

  #text(weight: "bold")[Notebook ritual:]

  Write slow. Refer back. Catch lies. They think you're slow. Then you catch them.

  #v(0.5mm)

  #text(weight: "bold")["The Turn":]

  Finish, turn to leave, stop: "One more thing..." Guards down. Truth emerges.

  #v(0.5mm)

  #text(weight: "bold")[Kind when accusing:]

  "I understand why..." Sympathetic = confessions. Gentle but relentless.

  #v(0.5mm)

  #text(weight: "bold")[Two roles:]

  Detective (character) + Facilitator (pacing, screen time). Build climax.

  #v(1fr)
]

// ============================================
// PAGE 7: RELATIONSHIPS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Key Relationships]

  #text(weight: "bold")[Reginald:]

  Victim. Never met. Puzzle to solve.

  #v(0.5mm)

  #text(weight: "bold")[Helena:]

  Employer. Hired you as security. Investigate thoroughly.

  #v(0.5mm)

  #text(weight: "bold")[Emilia:]

  Gentle soul. Reminds you of Maria. Investigate with care.

  #v(0.5mm)

  #text(weight: "bold")[All Other Guests:]

  Potential suspects. Investigate motives thoroughly. Evidence over assumptions.

  #v(1fr)
]

// ============================================
// PAGE 8: BACK COVER (Transparent PNG)
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
