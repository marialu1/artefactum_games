// ============================================
// PADRE RUI SANTOS - QUICK SHEET
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

  Father Juan Carlos

  #text(weight: "bold")[Age:]

  48 years

  #text(weight: "bold")[Profession:]

  Catholic priest (25 years service)
  
  St. Patrick's Parish, Manhattan

  #text(weight: "bold")[Connection to Host:]

  Invited to bless Christmas dinner. Reggie donated \$500 to parish (November).

  #v(1fr)
]

// ============================================
// PAGE 3: PERSONALITY & PERFORMANCE
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Personality & Performance]

  #text(weight: "bold")[Personality:]

  Man of profound FAITH (but not naive)

  Seasoned confessor (25 years hearing sins)

  Constant struggle: DOGMA vs. COMPASSION

  #v(0.5mm)

  #text(weight: "bold")[Mannerisms:]

  Blesses himself frequently (forehead-chest-shoulders)

  Counts rosary beads nervously

  Speaks Latin unconsciously when stressed

  #v(0.5mm)

  #block(breakable: false)[
    #text(weight: "bold")[Signature Phrases:]

    "God sees all, my children..."

    _"Deus misereatur..."_ (God have mercy)

    "I do not judge. I merely... accompany."
  ]

  #v(1fr)
]

// ============================================
// PAGE 4: PUBLIC SECRET
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Public Secret]

  #text(weight: "bold", fill: vintage-black)[Public Secret (can reveal freely):]

  You are here to bless the Christmas dinner (Catholic tradition). Reggie is parish benefactor (\$500 donation).

  #v(1fr)
]

// ============================================
// PAGE 5: PRIVATE SECRETS (2 SECRETS MAX)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]

  #text(weight: "bold", fill: vintage-black)[Secret #1 - Sofia Mendes (The Invisible Victim):]

  Sofia (18, parishioner since age 10 - like DAUGHTER to you). June: Reggie seduced her with marriage promises. July: She confessed to you (crying) - you understood: PREDATION. BUT seal of confession = ABSOLUTE (cannot reveal). You counseled her within confessional but she didn't listen. August: Reggie terminated. September: He donated \$500 (BRIBE for silence?). You accepted but guilt devastates. You HATE Reggie viscerally but couldn't do ANYTHING.

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #2 - Emilia = Ex-Nun "Sister Cristina":]

  You've known her since 1910 (same diocese). She was SISTER CRISTINA (Convent Santa Clara). 1918: She fell in love with James Harrods, came to you tormented. You tried to save her: "PERPETUAL VOWS! You married God!" She left anyway: "I prefer damnation with love than salvation in solitude." NOW she's "spiritualist" (BLASPHEMY).

  #v(1fr)
]

// ============================================
// PAGE 6: PRIVATE SECRETS (Continued - Secrets #3 & #4)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]
  #text(size: 10pt, style: "italic", fill: vintage-brown)[(continued)]

  #text(weight: "bold", fill: vintage-black)[Secret #3 - Murder Confession (Dec 20):]

  4 DAYS BEFORE PARTY: Someone confessed in confessional: "I will take a life. Will God forgive?" You HORRIFIED: "That is MURDER! DON'T do it!" Voice: "Already decided. Need forgiveness after." You CANNOT reveal (seal = absolute - breaking = excommunication + damnation). You prayed 4 days: "God, stop him." BUT GOD DIDN'T.

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #4 - You Recognize James's Voice:]

  During game: when you hear James speak, you RECOGNIZE. It's the voice from confessional (25 years training). CERTAINTY: James confessed. You look at him with agony. He notices. You CANNOT say. Human justice vs Divine law.

  #v(1fr)
]

// ============================================
// PAGE 7: GOALS + DID YOU KILL
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Goals Tonight]

  DON'T break confession (cost = own soul)

  BUT justice must prevail (how without revealing?)

  Confront Emilia (séance = blasphemy vs faith)

  Guide souls (pastoral role)

  #v(0.8mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold")[You did NOT kill Reggie.]

  But you KNOW who killed (via confession - James). And you CANNOT say.

  TRAGEDY: Servant of God imprisoned by vow. Justice vs Obedience.

  #v(1fr)
]

// ============================================
// PAGE 8: HOW TO PLAY
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[How to Play]

  #text(weight: "bold")[Speak Latin when nervous:]

  Start Portuguese, end Latin: "This is terrible... _in nomine Patris_..."

  #v(0.5mm)

  #text(weight: "bold")[Watch James with agony:]

  Loaded looks constantly. When asked: "Only... by sight." [LIE]

  #v(0.5mm)

  #text(weight: "bold")[NEVER reveal confession:]

  If pressured: "I cannot. Vow is between me and God."

  #v(0.5mm)

  #text(weight: "bold")[Epic confrontation with Emilia:]

  During séance - she reveals was nun, you tried to save her. Both vulnerable.

  #v(0.5mm)

  #text(weight: "bold")[Defend with compassion:]

  "Boy has vices... but kill? No. Minor sin ≠ mortal sin."

  #v(0.5mm)

  #text(weight: "bold")[Offer confession (Act III):]

  "If anyone wishes to unburden... ABSOLUTE secrecy."

  #v(1fr)
]

// ============================================
// PAGE 9: RELATIONSHIPS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Key Relationships]

  #text(weight: "bold")[Reginald Ashford (Victim):]

  VISCERAL HATRED. Corrupted Sofia. But priest shouldn't hate.

  #v(0.5mm)

  #text(weight: "bold")[Emilia Harrods (Ex-Nun/Enemy):]

  Was Sister Cristina. You tried to save her. She left for James. Deep rivalry.

  #v(0.5mm)

  #text(weight: "bold")[James Harrods (Secret Penitent):]

  Confessed murder to you Dec 20. You KNOW. Cannot say. Watch with agony.

  #v(0.5mm)

  #text(weight: "bold")[John Alfred Jones (Ally):]

  Law vs Faith = mutual respect. Both seek justice.

  #v(0.5mm)

  #text(weight: "bold")[Helena, Daisy, Claire, Denise:]

  Pastoral compassion. See suffering, defend unjustly accused.

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
