// ============================================
// GATSBY ROSE MANOR - RULES GUIDE
// 6-page A5 booklet (ULTRA-COMPACT VERSION)
// ============================================

// === PAGE SETUP ===
#set page(
  width: 148mm,
  height: 210mm,
  margin: (top: 15mm, bottom: 15mm, left: 30mm, right: 30mm),
  numbering: "1",
)

// === TEXT SETUP ===
#set text(
  font: "DejaVu Serif",
  size: 10pt,
  fill: rgb("#1a1a1a"),
  lang: "en",
)

// === PARAGRAPH SETUP ===
#set par(
  justify: false,
  leading: 0.8em,
)

// === ALIGNMENT ===
#set align(center)

// === LIST SETUP ===
#set list(
  indent: 0.5em,
  body-indent: 0.5em,
  spacing: 0.3em,
)

// === FONTS ===
#let heading-font = "Great Vibes"

// === COLORS ===
#let vintage-brown = rgb("#704214")

// === CUSTOM FUNCTIONS ===

// Section title
#let section-title(content) = {
  text(
    font: heading-font,
    size: 24pt,
    fill: vintage-brown,
    weight: "extrabold",
    content
  )
  v(-0.5em)
}

// Ornamental divider
#let divider(size: "medium") = {
  let width = if size == "small" {
    30mm
  } else {
    50mm
  }
  
  align(center)[
    #line(length: width, stroke: 0.8pt + vintage-brown)
  ]
  v(2mm)
}

// ============================================
// COVER PAGE
// ============================================

#v(1fr)

#text(
  font: heading-font,
  size: 36pt,
  fill: vintage-brown,
  weight: "extrabold"
)[The Gatsby Rose Manor]

#v(-0.5em)

#text(size: 11pt, style: "italic")[Est. 1889]

#v(2em)

#text(
  font: heading-font,
  size: 28pt,
  fill: vintage-brown
)[Christmas Murder Dinner]

#v(-0.3em)

#text(size: 13pt, weight: "bold")[1926 Edition]

#v(1fr)

// ============================================
// PAGE 1: INTRODUCTION
// ============================================
#pagebreak()

#v(1fr)

#text(weight: "bold", size: 12pt)[PLAYER GUIDE & RULES]

#v(1em)
#divider()
#v(1em)

*Christmas Eve, 1926.* You're invited to an exclusive soirée at Gatsby Rose Manor, Manhattan.

#v(0.5em)

Tonight, you are a *CHARACTER* in a murder mystery. Suspect, investigator... or killer?

#v(0.5em)

*Your mission:* Stay in character. Solve the crime.

#v(1em)
#divider(size: "small")
#v(0.5em)

#text(size: 9pt, style: "italic")[Questions? Contact Helena: 919149273]

#v(1fr)

// ============================================
// PAGE 2: YOUR MISSION
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Mission]
  #divider()
]

#v(0.3em)

#text(weight: "bold")[You'll receive a CHARACTER DOSSIER with:]
- Your identity & relationships
- Public role vs. private secrets
- Your objective

#v(0.5em)

#text(weight: "bold")[Tonight's goals:]

*EMBODY* — Speak, react, pursue goals as your character

*INVESTIGATE* — Search rooms for clues

*INTERROGATE* — Form alliances, extract information

*SOLVE* — Who did it? Why? How?

#v(1fr)

// ============================================
// PAGE 3: THE 5 ACTS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[The Structure]
  #divider()
]

#v(0.3em)

*ACT I: ARRIVALS & DINNER* (90 min) — Meet guests, tensions emerge

*ACT II: THE MURDER* (15 min) — Body discovered, investigation begins

#align(center)[#text(size: 8pt, style: "italic")[10 min break]]

*ACT III: INVESTIGATION* (90 min) — Search mansion, interrogate, form theories

#align(center)[#text(size: 8pt, style: "italic")[15 min break]]

*ACT IV: CONFRONTATION* (50 min) — Final clues, accusations, vote

*ACT V: REVELATION* (30 min) — Truth unveiled, killer exposed

#v(1fr)

// ============================================
// PAGE 4: THE RULES
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[The Rules]
  #divider()
]

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  gutter: 8mm,
  [
    #text(weight: "bold", size: 10pt)[YOU MAY ✓]
    
    - Stay in character
    - Lie, bluff, misdirect
    - Withhold secrets
    - Form alliances
    - Accuse anyone
    - Search rooms
  ],
  [
    #text(weight: "bold", size: 10pt)[YOU MAY NOT ✗]
    
    - Break character
    - Steal/hide clues
    - Enter restricted areas
    - Use physical force
    - Use phones
  ]
)

#v(0.5em)

#text(weight: "bold", size: 10pt)[ABOUT SECRETS:]

- *PUBLIC info* → share freely
- *PRIVATE secrets* → reveal strategically (when caught, or to prove innocence)
- Reveal too early = vulnerable | Hide too long = suspicious
- *If you're the killer:* Lie about everything except physical evidence

#v(1fr)

// ============================================
// PAGE 5: GUIDELINES & CLUES
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Character Guidelines]
  #divider()
]

#v(0.3em)

*EMBODYING:* Use your dossier's traits, mannerisms, phrases. Improvise within personality.

*REACTING:* React as YOUR character (diva screams, detective takes charge, priest prays).

*DON'T KNOW?* Improvise or deflect ("I'd rather not discuss that").

#v(0.5em)

#align(center)[
  #section-title[Clues & Evidence]
  #divider(size: "small")
]

#v(0.3em)

- Clues are *REAL objects* hidden in the mansion
- Some are TRUE, some are *RED HERRINGS*
- Hostess/detective provide info if asked
- *Take notes!*

#v(1fr)

// ============================================
// PAGE 6: PRACTICAL INFO & WINNING
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Practical Information]
  #divider()
]

#v(0.3em)

*TIMING:* 7:15 PM arrive → 8:00 PM start → 12:30 AM end (~5-6 hours)

*FOOD:* Cocktail-style buffet throughout. Inform hostess of dietary needs.

*DRESS:* Roaring Twenties (suits, flapper dresses) or elegant attire.

#v(0.5em)

#align(center)[
  #section-title[How to Win]
  #divider(size: "small")
]

#v(0.3em)

At Act IV end, *VOTE* on the killer.

*YOU WIN IF:*
- Correctly identify killer → Glory & bragging rights
- OR you're killer and avoid capture → Successfully deceived everyone

*NO PRIZE.* This is about the *EXPERIENCE* — immersion, storytelling, mystery-solving.

#v(1fr)
