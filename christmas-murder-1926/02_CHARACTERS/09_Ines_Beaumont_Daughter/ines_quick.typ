// ============================================
// CLAIRE BEAUMONT - QUICK SHEET
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

  Claire Beaumont

  #text(weight: "bold")[Age:]

  26 years

  #text(weight: "bold")[Profession:]

  None (wealthy daughter lifestyle)
  
  Charity work, piano, watercolor painting

  #text(weight: "bold")[Connection to Host:]

  Met Helena through charity circles. Invited as social acquaintance.

  REALITY: Discovered in November that Reginald is her biological father. Came to party with twin sister to confront him.

  Brought laudanum, planned murder. But couldn't execute it.

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

    MORAL - Struggles with right vs. wrong (raised with strict values)

    PRIVILEGED but aware - Feels guilty about twin's orphanage life

    CONFLICTED - War between Good Daughter and Angry Twin

    LOYAL - To twin Denise, to truth (torn when these conflict)

    #v(0.3mm)

    #text(weight: "bold")[Mannerisms:]

    Touches pearl necklace when nervous/lying (anxiety tell)

    Perfect posture (finishing school training)

    Gentle gestures (small, contained movements)

    Watches Denise constantly (protectively)

    #v(0.3mm)

    #text(weight: "bold")[Signature Phrases:]

    "I don't know how to feel about that..."

    "It's complicated, isn't it?"

    "I want to do the right thing, but..."

    "Denise is my sister. I can't abandon her again."
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

  "I recently discovered I'm adopted." (Six weeks ago, November 1926)

  "I have a twin sister I never knew existed." (Denise - separated at birth)

  "We were reunited in November and have been inseparable since." Mrs. Ashford invited both through charity work.

  First time meeting Mr. Ashford.

  #v(1fr)
]

// ============================================
// PAGE 5: PRIVATE SECRETS (Secrets #1 & #2)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]

  #text(weight: "bold", fill: vintage-black)[Secret #1 - Twin Separation (1900):]

  Birth mother Martha Beaumont died giving birth to twins.

  Biological father: Reginald Ashford (affair, unmarried, age 22). He PAID orphanage (\$1,000) to separate you, keep you apart, never mention each other.

  You: adopted by wealthy Beaumonts (privilege). Denise: orphanage horror. 26 years apart.

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #2 - The Reunion (November 5, 1926):]

  Charity event. Saw "reflection" in different dress. Not mirror - TWIN. Instant recognition.

  Hired PI together. Discovered: Father = Reginald Ashford. He PAID to separate you. Mother died because of you both.

  Abandoned you completely.

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

  #text(weight: "bold", fill: vintage-black)[Secret #3 - The Murder Plan (December 1926):]

  December 10: Denise says "I'm going to kill him." You: "How?"

  Together you planned: Poison (laudanum), Christmas Eve party (opportunity), slip it in his drink.

  December 18: YOU bought laudanum from pharmacy (lethal dose). Transferred to flask, hid in purse.

  Tonight's plan: Poison him, get justice, leave.

  #v(1fr)
]

// ============================================
// PAGE 7: GOALS + STATUS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Goals Tonight]

  Support Denise (twin bond comes first)

  Navigate moral conflict (planned murder, didn't execute)

  Protect Denise if accused (fierce loyalty)

  Discover truth (value honesty despite everything)

  #v(0.8mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold")[You did NOT kill Reggie.]

  You PLANNED to. Brought POISON. Had motive, means, opportunity.
  
  Or you did?

  #v(1fr)
]

// ============================================
// PAGE 8: HOW TO PLAY
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[How to Play]

  #text(weight: "bold")[Touch pearls when lying:]

  Unconscious anxiety tell. Fingers to throat when nervous, conflicted, hiding truth.

  #v(0.5mm)

  #text(weight: "bold")[Perfect posture breaks when upset:]

  Finishing school training = always straight. ONLY collapses when truly overwhelmed.

  #v(0.5mm)

  #text(weight: "bold")[Quiet crying (internalized emotion):]

  Tears fall silently. Turn away to hide. Dab with handkerchief. Apologize for emotion.

  #v(0.5mm)

  #text(weight: "bold")[Watch Denise constantly:]

  Protective gaze. Jump to her defense. Mimic her posture unconsciously (twin bond).

  #v(0.5mm)

  #text(weight: "bold")[Moral conflict is VISIBLE:]

  War between honesty and loyalty. Struggle openly. "I want to tell truth but..."

  #v(1fr)
]

// ============================================
// PAGE 9: RELATIONSHIPS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Key Relationships]

  #text(weight: "bold")[Denise:] 

  LOVE - Instant, deep, biological. GUILT - "Why me?" LOYALTY - Fierce, protective. Would die for her. "Good twin vs. bad twin" dynamic.

  #v(0.5mm)

  #text(weight: "bold")[Reginald:]

  HATRED - For abandonment, separation, mother's death. GRIEF - For lost relationship. RELIEF when dead (complicated, guilt-inducing relief).

  #v(0.5mm)

  #text(weight: "bold")[Helena:]

  Initially: Polite charity acquaintance.

  #v(0.5mm)

  #text(weight: "bold")[JC:]

  FEAR - He'll discover laudanum, plan. RESPECT - Kind investigator. GUILT - Wants to tell truth but protects Denise.

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
