// ============================================
// FILIPP MORETTI - QUICK SHEET
// 6-page A5 booklet (saddle-stitch ready)
// ============================================

// === PAGE SETUP ===
#set page(
  width: 148mm,
  height: 210mm,
  margin: (top: 15mm, bottom: 15mm, left: 30mm, right: 30mm),
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
  leading: 0.2em,
)

// === TEXT ALIGNMENT ===
// Removed global center - will apply per-page content instead

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

// Ornamental divider (simplified - using line for now)
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

// Relationship entry
#let relation(emoji, name, description) = {
  [#emoji #text(weight: "bold")[#name] --- #description]
  v(1.5mm)
}

// Identity field
#let id-field(label, value) = {
  [#text(weight: "bold")[#label:] #value]
  linebreak()
}

// ============================================
// PAGE 1: FRONT COVER (Transparent PNG with Cream Background)
// ============================================
#page(
  margin: 0mm,
  numbering: none,
  fill: cream,  // Cream background shows through transparency
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
// PAGE 2-5: INTERIOR PAGES (with page numbers)
// ============================================
#set page(
  margin: (top: 15mm, bottom: 50mm, left: 30mm, right: 30mm),
  footer: [
    #align(center)[
      #stack(
        spacing: 0mm,
        // Ornament as background (3x bigger!) - DON'T MOVE!
        image("assets/page_number_ornament.png", width: 150mm),
        // Number PERFECT position (sweet spot found!)
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

  #text(weight: "bold")[Full Name:]

  Filipp Antonio Moretti

  #text(weight: "bold")[Nickname:]

  "The Silver Fox" (clients), "Filipp" (friends)

  #text(weight: "bold")[Age:]

  38 years

  #text(weight: "bold")[Profession:]

  Night Entrepreneur - Owner of 3 Manhattan speakeasies
  
  ("Silver Fox Lounge" - flagship, Cotton Club - partnership, + 1 smaller)

  #text(weight: "bold")[Connection to Host:]

  Beverage supplier (\$85) - "Silver Fox Signature Punch"
  
  Professional relationship 2 years (high society parties)

  #v(1fr)
]

// ============================================
// PAGE 3: PERSONALITY & CORE TRAITS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Who You Are]

  #text(weight: "bold")[Appearance:]

  Always suit with VEST • Hair perfect brilliantine
  
  Thin trimmed mustache • Gold pinky ring • Pocket square

  #v(0.5mm)

  #text(weight: "bold")[CRITICAL Mannerisms:]

  EXPANSIVE Italian gestures (hands speak!)
  
  Kisses ladies' hands (old-school gentleman)
  
  Lights cigars • Touches mustache when thinking

  #v(0.5mm)

  #text(weight: "bold")[Signature Phrases:]

  "Mio Dio! Che disgrazia!" • "In my clubs, this would NOT..."
  
  "Honor is everything, caro amico" • "Famiglia first, always"

  #v(1fr)
]

// ============================================
// PAGE 4: SEGREDO PÚBLICO
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Public Secret]

  #text(weight: "bold", size: 11pt)[CAN reveal freely from start:]

  You supplied special punch (\$85) - "Silver Fox Signature Blend"
  
  Secret recipe Italian family generations
  
  Everyone knows you have speakeasies (illegal but... everyone drinks Prohibition)

  #v(0.5mm)

  #text(weight: "bold", size: 10pt)[Networking tonight:]

  High society = potential clients
  
  Builds reputation • Shows product quality
  
  "In my clubs, this would be PERFECT, bella?"

  #v(1fr)
]

// ============================================
// PAGE 5: SEGREDOS PRIVADOS (Revela Estrategicamente)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Private Secrets]

  #text(weight: "bold", size: 10pt)[SECRET #1 - STOLEN RECIPE]

  #text(size: 10pt)[8 months ago: shared SECRET recipe with Reggie (drunk)
  
  2 weeks later: "The Ashford Club" serves YOUR punch
  
  \$2,000 lost • Reputation tarnished • HUMILIATION
  
  #text(weight: "bold")[HUGE motive to kill] → BUT didn't
  
  #text(weight: "bold")[WHEN reveal:] When motives discussed → ADMIT with passion]

  #v(3mm)

  #text(weight: "bold", size: 10pt)[SECRET #2 - ACCIDENTAL ACCOMPLICE (WORST!)]

  #text(size: 10pt)[Dec 21: James asked for piano wire ("jazz band gift")
  
  YOU got it (contacts) • No questions
  
  Provided WITHOUT knowing • Look like accomplice • INNOCENT but...]

  #v(1fr)
]

// ============================================
// PAGE 6: OBJETIVOS & ESTATUTO
// ============================================
#pagebreak()

#v(0.8fr)
#align(center)[
  #section-title[Goals Tonight]

  #text(weight: "bold", size: 11pt)[1. PROTECT DAISY]
  
  #text(size: 10pt)[Total defense if accused • Volcanic but clear: PATERNAL]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[2. DEFEND THE PUNCH]
  
  #text(size: 10pt)[Reputation = business • Prove did NOT poison]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[3. CONFRONT JAMES]
  
  #text(size: 10pt)[Suspect \$8k betrayal • When wire revealed = FURY]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[4. PROVE INNOCENCE]
  
  #text(size: 10pt)[Motive + means + opportunity... BUT didn't do it!]

  #v(0.5mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold", size: 12pt)[NO. You are INNOCENT.]

  #v(0.3mm)

  #text(size: 10pt)[BUT provided piano wire (Dec 21, "jazz gift")
  
  HATED Reggie (recipe stolen, \$2k lost)
  
  DEFEND Daisy (Reggie's ex-lover, obvious suspect)]

  #v(0.8fr)
]

// ============================================
// PAGE 7: HOW TO PLAY (Guia Rápido)
// ============================================
#pagebreak()

#v(0.5fr)
#align(center)[
  #section-title[How to Play]

  #text(weight: "bold", size: 11pt)[PHYSICAL PERFORMANCE:]
  
  #text(size: 10pt)[HANDS speak constantly (expansive Italian gestures!)
  
  Kiss ladies' hands • Hug men (shoulders) • Touch mustache]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[VOICE & LANGUAGE:]
  
  #text(size: 10pt)[Mix PT + IT + EN naturally • "Mio Dio!" when shocked
  
  "Bella" frequently • "Caro amico" • "Che disgrazia!"]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[VOLCANIC MOMENT (IF DAISY ACCUSED):]
  
  #text(size: 9pt)["ENOUGH! Quella ragazza is innocent!
  
  Known 4 YEARS! MADE her career! Like DAUGHTER!
  
  You accuse HER?! Look at WIFE! Look at OTHERS!"
  
  [Physically between Daisy and accusers]]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[STRATEGY:]
  
  #text(size: 10pt)[PASSIONATE honesty = defense • DON'T hide Reggie hatred
  
  ADMIT motive BUT deny action • Honor code > violence]

  #v(0.5fr)
]

// ============================================
// PAGE 8: RELAÇÕES CHAVE (Mapa Social)
// ============================================
#pagebreak()

#v(0.5fr)
#align(center)[
  #section-title[Key Relationships]

  #text(weight: "bold", size: 10pt)[DAISY VALMONT - "Daughter"]
  
  #text(size: 9pt)[Protected/adopted daughter • TOTAL defense • Paternal not romance]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[JAMES HARRODS - Traitor]
  
  #text(size: 9pt)[Partner \$8k • Suspect fraud • Piano wire HIS → FURY]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[REGGIE - Dead Thief]
  
  #text(size: 9pt)[Stole recipe • Rival • \$2k lost • HATED openly]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[JC MENDES - Detective]
  
  #text(size: 9pt)[Ex-NYPD = nervousness • Offer drinks (subtle bribe?)]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[PADRE RUI - Mutual Respect]
  
  #text(size: 9pt)[Church occasional • Different honor codes • Possible ally]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[MARIA FLETCHER - Observer]
  
  #text(size: 9pt)[Notebook constant = discomfort • Watch what you say]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[HELENA ASHFORD - Client]
  
  #text(size: 9pt)[Professional • Courtesy • Supplied punch • Neutral]

  #v(0.5fr)
]

// ============================================
// PAGE 9: BACK COVER (Transparent PNG with Cream Background)
// ============================================
#page(
  margin: 0mm,
  numbering: none,
  footer: none,  // NO footer on back cover!
  fill: cream,  // Cream background shows through transparency
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
