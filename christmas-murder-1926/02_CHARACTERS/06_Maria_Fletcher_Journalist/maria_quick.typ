// ============================================
// MARIA FLETCHER - QUICK SHEET
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

  Maria Adelaide Fletcher

  #text(weight: "bold")[Age:]

  31 years

  #text(weight: "bold")[Profession:]

  Investigative Journalist (freelance)
  
  Former Senior Reporter, _New York Herald_ (1918-1923)

  #text(weight: "bold")[Connection to Host:]

  Career destroyed by Reggie (1923 libel lawsuit).
  
  Blacklisted from journalism. 3 years struggling.
  
  OBVIOUS REVENGE MOTIVE.

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

  Brilliant investigative mind (photographic memory)

  Wounded but unbowed (3 years fighting)

  Truth above all (professional integrity)

  #v(0.5mm)

  #text(weight: "bold")[Mannerisms:]

  Always carrying notebook and pen

  Takes notes mid-conversation (unsettling)

  Ink-stained fingers

  #v(0.5mm)

  #block(breakable: false)[
    #text(weight: "bold")[Signature Phrases:]

    "Tell me about..."

    "I noticed earlier that you..."

    "Let's look at the facts..."
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

  #text(weight: "bold", fill: vintage-black)[Public Secret (everyone knows):]

  June 1923: You published exposé on Reggie ("The Ashford Empire: Built on Greed and Lies").
  
  November 1923: He won libel lawsuit (technicality). You ordered to pay \$25,000.
  
  Fired. Blacklisted. Career destroyed.
  
  Mother lost house helping you. 3 years struggling.
  
  POWERFUL REVENGE MOTIVE.

  #v(1fr)
]

// ============================================
// PAGE 5: PRIVATE SECRETS (2 SECRETS MAX)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]

  #text(weight: "bold", fill: vintage-black)[Secret #1 - Dark Fantasies:]

  You've fantasized about Reggie's death for 3 years.
  
  Heart attack, accident, public exposure leading to suicide.
  
  NEVER planned to act. But thought about it. Often.
  
  Tonight when he dies: relief + guilt + fear. Makes you vulnerable.
  
  If anyone knew = certain guilt.

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #2 - Obsessive Surveillance:]

  You've been following Reggie. Not daily, but regularly.
  
  "Ashford File II" - 200+ pages documenting his activities.
  
  Saw him with Daisy. Noticed Helena's abuse. Tracked meetings.
  
  If found = looks like stalking (because it is).

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

  #text(weight: "bold", fill: vintage-black)[Secret #3 - Hidden Camera:]

  Brought miniature camera tonight (hidden in purse).
  
  Plan: photograph anything incriminating.
  
  Professional tool... or premeditation?
  
  If found: "Why would innocent guest bring camera?"

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #4 - The Loneliness:]

  Profoundly isolated. Work consumed life before fall.
  
  After: colleagues avoided you. Too proud to ask for help.
  
  No close friends. No romance (who'd want "failed" journalist?).
  
  Tonight: surrounded by people but fundamentally ALONE.

  #v(1fr)
]

// ============================================
// PAGE 7: GOALS + DID YOU KILL
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Goals Tonight]

  CLEAR YOUR NAME (everyone suspects you first)

  SOLVE MYSTERY (prove investigative skills intact)

  Find peace with complex emotions (relief vs guilt)

  Possible redemption (if solve = career resurrection?)

  #v(0.8mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold")[You did NOT kill Reggie.]

  You HATED him. Fantasized about death. Followed him. Documented obsessively.

  BUT YOU DIDN'T KILL HIM.

  Line between thought and action = EVERYTHING. You didn't cross it.

  #v(1fr)
]

// ============================================
// PAGE 8: HOW TO PLAY
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[How to Play]

  #text(weight: "bold")[Always have notebook out:]

  Take notes constantly. Makes people nervous. Use it.

  #v(0.5mm)

  #text(weight: "bold")[Ask hard questions politely:]

  "Tell me about..." "I noticed..." "Explain..."

  #v(0.5mm)

  #text(weight: "bold")[When accused (will happen):]

  "Yes, I hated him. That doesn't make me killer. I fight with WORDS."

  #v(0.5mm)

  #text(weight: "bold")[Special abilities:]

  Interrogation Master, Notebook Advantage, Detail Recall, Evidence Analysis

  #v(0.5mm)

  #text(weight: "bold")[Defend yourself with facts:]

  "Where's physical evidence? Motive ≠ proof."

  #v(0.5mm)

  #text(weight: "bold")[Energy:]

  Tense but professional. Wounded but determined. Brilliant investigator.

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

  HATRED. Destroyed your life. 3 years struggling because of HIM.

  #v(0.5mm)

  #text(weight: "bold")[Helena Ashford (Hostess):]

  Sympathy. Recognize abuse victim. Different cage, same prison.

  #v(0.5mm)

  #text(weight: "bold")[John Alfred Jones (Detective):]

  Respect. Potential ally OR rival. Both seek truth. Your choice.

  #v(0.5mm)

  #text(weight: "bold")[Daisy Vermont (Singer):]

  Complex alliance. Both harmed by Reggie. "Enemy of my enemy..."

  #v(0.5mm)

  #text(weight: "bold")[Others:]

  All potential sources. Interview everyone. Find truth.

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
