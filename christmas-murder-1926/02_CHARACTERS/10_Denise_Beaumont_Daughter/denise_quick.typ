 foun// ============================================
// DENISE BEAUMONT - QUICK SHEET
// 10-page A5 booklet (saddle-stitch ready)
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
// PAGE 2-9: INTERIOR PAGES (with page numbers)
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

  Esmeralda Beaumont

  #text(weight: "bold")[Age:]

  26 years

  #text(weight: "bold")[Profession:]

  Factory worker
  
  Side income: Whatever it takes

  #text(weight: "bold")[Connection to Host:]

  Invited by Mr. Ashford himself.

  REALITY: Discovered Reggie is her father. Blackmailed him for \$800 total. Came to execute murder plan.

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

    SURVIVOR - Tough, adaptable, ruthless

    ANGRY - Justified rage

    RESENTFUL - Class hatred

    GUARDED - Walls up always

    #v(0.3mm)

    #text(weight: "bold")[Mannerisms:]

    Arms crossed

    Chin up

    Fists clenched

    Close to Claire

    #v(0.3mm)

    #text(weight: "bold")[Signature Phrases:]

    "You don't know what it's like."

    "Rich people don't get to judge me."

    "I survived. That's more than most."

    "Claire is all I have. Touch her and I'll kill you."
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

  "I grew up in St. Agnes Orphanage."

  "Found my twin sister six weeks ago."

  "We were reunited in November and have been inseparable since." Life's fair like that, right?

  Mr. Ashford invited me.

  #v(1fr)
]

// ============================================
// PAGE 5: PRIVATE SECRETS (All 3 Secrets)
// ============================================
#pagebreak()

#v(0.5fr)
#align(center)[
  #section-title[Your Private Secrets]

  #text(weight: "bold", fill: vintage-black)[Secret #1 - The Orphanage Hell:]

  St. Agnes Orphanage: 26 years of survival. Never adopted. Aged out at 18 with \$5 and no skills.

  Violence, poverty, abandonment taught one lesson: Trust no one. Take what you need. Survive at any cost.

  Factory work since 18. Boarding house. Barely surviving. Until Claire.

  #v(0.3mm)

  #text(weight: "bold", fill: vintage-black)[Secret #2 - The Blackmail Scheme:]

  After discovering father's identity: "I want to make him pay."

  November 10: Confronted Reggie. "I'm Esmeralda Beaumont. Your daughter. The one you abandoned."

  Blackmailed him: \$500 + \$300 = \$800 total. Kept signed receipts.

  #v(0.3mm)

  #text(weight: "bold", fill: vintage-black)[Secret #3 - The Murder Plan:]

  December 10: "I'm going to kill him." Claire: "How?"

  Together planned: Poison, Christmas Eve party, slip it in his drink. Claire bought laudanum Dec 18.

  Tonight: READY. No hesitation. Would do it alone to protect Claire. Wanted him to KNOW it was you.

  20h18: Someone else killed him first. CHEATED. Wanted that justice. Wanted to look in his eyes.

  #v(0.5fr)
]

// ============================================
// PAGE 6: GOALS + STATUS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Goals Tonight]

  Protect Claire (twin comes first, always)

  Survive suspicion (you LOOK guilty, you're READY to fight)

  Own your choices (admit blackmail, deny murder, dare them to prove it)

  No shame (he deserved worse)

  #v(0.8mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold")[You did NOT kill Reggie.]

  You BLACKMAILED him (\$800). You PLANNED to murder him. You WANTED to do it.
  
  Or you did?

  #v(1fr)
]

// ============================================
// PAGE 7: HOW TO PLAY
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[How to Play]

  #text(weight: "bold")[Arms crossed:]

  Default stance. Physical barrier. "Stay back, don't touch me." Especially around rich people.

  #v(0.5mm)

  #text(weight: "bold")[Gets LOUDER when lying:]

  Aggression as shield. More sarcastic. Stares defiantly. Dare you to challenge.

  #v(0.5mm)

  #text(weight: "bold")[Voice drops when truthful:]

  Quieter, vulnerable. Less sarcastic. Looks at Claire for grounding. Admits hard truths.

  #v(0.5mm)

  #text(weight: "bold")[Aggressive defense is your strategy:]

  Admit blackmail, own it, no shame. Deny murder.

  #v(0.5mm)

  #text(weight: "bold")[Fierce protection of Claire:]

  Only soft spot. Would kill/die for her. Step in front when threatened. "You deal with me."

  #v(1fr)
]

// ============================================
// PAGE 8: RELATIONSHIPS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Key Relationships]

  #text(weight: "bold")[Claire:] 

  LOVE - Fierce, protective, unconditional. First person who loved you. GUILT - "Why did she suffer my absence?" LOYALTY - Would kill/die for her. Twin bond sacred.

  #v(0.5mm)

  #text(weight: "bold")[Reginald:]

  HATRED - Pure, uncomplicated, justified. NO GRIEF - Relief he's dead. RESENTMENT - He lived wealthy while you suffered. SATISFACTION - At least he's gone.

  #v(0.5mm)

  #text(weight: "bold")[Helena:]

  Initially: Rich bitch. After murder revealed: RESPECT. "She had the guts we didn't."

  #v(0.5mm)

  #text(weight: "bold")[JC:]

  HOSTILITY - Cops never helped, why trust this one? DEFENSIVENESS - Know you look guilty, ready to fight. RESPECT - He's good at his job.

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
