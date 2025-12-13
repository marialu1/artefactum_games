// ============================================
// EMÍLIA HARRODS - QUICK SHEET
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

  Emília Cristina Harrods (née Silva)

  #text(weight: "bold")[Former Name:]

  Sister Cristina (Convent Santa Clara, 1910-1918)

  #text(weight: "bold")[Age:]

  38 years

  #text(weight: "bold")[Profession:]

  Private Spiritualist and Medium
  
  Ex-nun who left convent for love

  #text(weight: "bold")[Connection to Host:]

  Invited with husband James. Here to support him. Asked to conduct séances to contact Reggie's spirit.

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

  Genuinely spiritual (faith is real)

  Gentle and compassionate (healer)

  Devoted wife (loves James completely)

  Quietly strong (gave up everything for love)

  Naive to betrayal (trusts absolutely)

  #v(0.5mm)

  #text(weight: "bold")[Mannerisms:]

  Speak softly with Portuguese lilt

  Touch rosary beads (hidden in pocket)

  Close eyes when "listening" to spirits

  Gentle hand gestures when blessing

  #v(0.5mm)

  #block(breakable: false)[
    #text(weight: "bold")[Signature Phrases:]

    "I sense a presence..."

    "The spirits are restless tonight..."

    "May God have mercy on their souls..."

    "Que Deus te abençoe..." (Portuguese)
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

  #text(weight: "bold", fill: vintage-black)[You Were Sister Cristina:]

  1910-1918: Nun at Convent Santa Clara. Devoted to prayer and contemplation. 1918: Met James Harrods through charity work. Fell in love. After months of agonizing prayer, chose love over vows. Left convent to marry him. Family disowned you. Scandal in certain circles. People whisper: "She broke her vows for a man."

  #v(0.8mm)

  #text(weight: "bold")[Father Juan Carlos knows you from those days. He will recognize your voice during the séance. This creates tension.]

  #v(1fr)
]

// ============================================
// PAGE 5: PRIVATE SECRETS (2 SECRETS MAX)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]

  #text(weight: "bold", fill: vintage-black)[Secret #1 - Still Pray to Virgin Mary:]

  Despite leaving convent, never left faith. Every night pray rosary. Light candles. Attend Mass when James isn't looking (he finds it "excessive"). Still a nun in your heart—but spiritual wound never healed. If discovered: "Old habits. They bring comfort."

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #2 - You Know Reggie Was Evil:]

  6 months ago at charity event: touched Reggie's hand, felt darkness/coldness. Spiritual sign. Believe he harbored deep evil. Been uneasy since. If asked: "I'm a medium. Sometimes I sense when someone is... marked." Establishes genuine abilities (you were RIGHT).

  #v(1fr)
]

// ============================================
// PAGE 6: PRIVATE SECRETS (Continued - Secrets #3 & 4)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]
  #text(size: 10pt, style: "italic", fill: vintage-brown)[(continued)]

  #text(weight: "bold", fill: vintage-black)[Secret #3 - Felt James Pulling Away:]

  Past year: James distant. Fewer embraces. Late nights "at bank." Distracted. Deep down, quiet voice whispers: _He doesn't love you anymore._ Terrified to confront (if lost James = nothing left). So you smile, pray, pretend. IN DENIAL.

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #4 - Recognize Father Juan Carlos's Voice:]

  You and Father Juan Carlos same diocese during convent years. He knew you as Sister Cristina. Haven't seen in years. During séance when you speak in "spirit voice," he will recognize you. Lock eyes briefly. Loaded tension: _He knows who you were. He knows you left._

  #v(1fr)
]

// ============================================
// PAGE 7: GOALS + DID YOU KILL
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Goals Tonight]

  SUPPORT JAMES (be good wife, make him proud)

  CONDUCT SÉANCES (Helena asked you—take seriously)

  STAY UNNOTICED (not comfortable in high society)

  MAINTAIN FAITH (trust God has a plan)

  #v(0.8mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold")[You did NOT kill Reggie.]

  You are COMPLETELY INNOCENT. No motive (barely knew him). No knowledge. No involvement.

  You are the ONLY truly innocent person here (besides detective).

  #text(weight: "bold")[ACT IV (~22h30): SUICIDE]

  You discover something. World collapses. Write suicide note. Exit quietly. GM announces your death.

  #v(1fr)
]

// ============================================
// PAGE 8: RELATIONSHIPS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Key Relationships]

  #text(weight: "bold")[James Harrods (Husband / Betrayer):]

  Deep, unconditional love. Gave up vows for him. Your entire world. (Truth: He's lover with Helena, co-killer. You don't know until Act IV.)

  #v(0.5mm)

  #text(weight: "bold")[Helena Ashford (Hostess / Secret Rival):]

  Warm, grateful. Think she's kind hostess. (Truth: She's husband's lover, co-killer. You discover Act IV.)

  #v(0.5mm)

  #text(weight: "bold")[Father Juan Carlos (Former Confessor):]

  Shame, defensiveness. He represents life you abandoned. During séance: recognition moment (lock eyes briefly). Adds tension.

  #v(0.5mm)

  #text(weight: "bold")[Reggie (Victim):]

  Felt spiritual darkness in him (touched hand at event). Uneasy but pray for his soul.

  #v(0.5mm)

  #text(weight: "bold")[Others:]

  Kind to everyone. Offer comfort, prayer. Gentle spiritual presence.

  #v(1fr)
]

// ============================================
// PAGE 9: HOW TO PLAY
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #block(breakable: false)[
    #section-title[How to Play]

    #text(weight: "bold")[During Séances (Act III - You lead 2 séances):]

    Everyone holds hands. Candles lit. You close eyes. Invocation: "Spirits of departed, we call upon you. Reginald Ashford, speak through me..." Use "spirit voice" (raspy, cryptic). GM whispers clues—repeat as "Reggie's voice."

    #v(0.5mm)

    #text(weight: "bold")[With James:]

    Loving, supportive. Touch his arm, smile. Defend if questioned: "James would never..." NO IDEA he's betraying you.

    #v(0.5mm)

    #text(weight: "bold")[With Helena:]

    Polite, grateful. Thank for invitation. Offer séances. No suspicion.

    #v(0.5mm)

    #text(weight: "bold")[With Father Juan Carlos:]

    Tense. Avoid eye contact. If confronted: "Please, Father. I made my choice."

    #v(0.5mm)

    #text(weight: "bold")[Act IV Exit (~22h30):]

    GM signals. Evidence revealed. Face goes blank. Stand slowly: "I need air..." Write note and exit.
  ]

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
