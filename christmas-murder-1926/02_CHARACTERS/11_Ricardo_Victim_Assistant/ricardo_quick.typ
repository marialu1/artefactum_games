// ============================================
// RICARDO - QUICK SHEET (DUAL ROLE)
// 9-page A5 booklet (Victim → Butler)
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

// ============================================
// PAGE 1: FRONT COVER
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
// PAGE 2-9: INTERIOR PAGES
// ============================================
#set page(
  margin: (top: 15mm, bottom: 50mm, left: 30mm, right: 30mm),
  footer: [
    #align(center)[
      #stack(
        spacing: 0mm,
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
// PAGE 2: DUAL ROLE OVERVIEW
// ============================================

#v(1fr)
#align(center)[
  #section-title[Dual Role]

  #text(weight: "bold", size: 13pt)[YOU HAVE TWO ROLES TONIGHT!]

  #v(0.5mm)

  #text(weight: "bold", size: 11pt)[ROLE 1: REGGIE ASHFORD (Victim)]
  
  #text(size: 10pt)[8:00pm-8:09pm (10 minutes)
  
  Helena's husband • Arrogant host • CRUEL to everyone
  
  Objective: Make EVERYONE hate you → Justify murder]

  #v(0.5mm)

  #text(weight: "bold", size: 11pt)[ROLE 2: CLARENCE (Butler/Witness)]
  
  #text(size: 10pt)[8:18pm-end (2.5 hours)
  
  Loyal butler • Formal, humble • GM assistant
  
  Objective: Testimony at 10pm = SOLVES CRIME]

  #v(1fr)
]

// ============================================
// PAGE 3: REGGIE - WHO YOU ARE
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Reggie Ashford]
  
  #text(size: 10pt, weight: "bold")[VICTIM • 10 MINUTES • MAKE THEM HATE YOU]

  #v(0.5mm)

  #text(weight: "bold")[Who you are:]

  Reginald "Reggie" Ashford III (48 years old)
  
  Textile magnate • Millionaire • Owner of Gatsby Rose Manor

  #v(0.5mm)

  #text(weight: "bold")[Temperament:]

  CHARM + CRUELTY • Arrogant • Controlling
  
  "Charming monster" → Seems nice → Is horrible

  #v(1fr)
]

// ============================================
// PAGE 4: REGGIE - APPEARANCE & MANNERISMS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #text(weight: "bold")[Appearance:]

  Expensive suit • Silk tie • Gold watch • BIG posture
  
  Slicked back hair • Practiced smile (weapon)

  #v(0.5mm)

  #text(weight: "bold")[Signature Phrases:]

  "How delightful to see you..." [NOT delightful]
  
  "You're looking... well." [Pause = insult]
  
  "My dear..." [Possessive never affectionate]

  #v(1fr)
]

// ============================================
// PAGE 5: PLANT MOTIVES
// ============================================
#pagebreak()

#v(0.5fr)
#align(center)[
  #section-title[Plant Motives]
  
  #text(size: 10pt, weight: "bold")[BE CRUEL TO EACH PERSON - THEY NEED MOTIVE!]

  #v(0.3mm)

  #text(weight: "bold", size: 10pt)[HELENA (wife):]
  #text(size: 9pt)[Touch possessively • Correct publicly • Humiliate
  
  "My wife planned this. I had to correct the details."]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[JAMES (banker):]
  #text(size: 9pt)[Know his fraud • Threaten exposure
  
  "We should talk... about Mrs. Whitmore's portfolio."]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[DAISY (ex-lover):]
  #text(size: 9pt)[Dumped her cruelly • Mock kindness now
  
  "Still singing at those... little clubs? How quaint."]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[MARIA (journalist):]
  #text(size: 9pt)[Destroyed career with lawsuit • Zero remorse
  
  "Still writing? Oh right, the lawsuit. Terrible..."]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[INÊS & DENISE (secret daughters):]
  #text(size: 9pt)[Abandoned at birth • DENY knowing them
  
  "I don't know you. Should I?" [LIE - knows who they are]]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[EMILIA:]
  #text(size: 9pt)["Mrs. Harrods. How... mystical of you to come."]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[PADRE RUI:]
  #text(size: 9pt)["How's the soul-saving business, Father?"]

  #v(0.5fr)
]

// ============================================
// PAGE 7: CLARENCE - WHO YOU ARE
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Clarence Worthington]
  
  #text(size: 10pt, weight: "bold")[BUTLER • 2.5H • KEY WITNESS]

  #v(0.5mm)

  #text(weight: "bold")[Appearance:]

  Butler uniform (black vest, bow tie) • Upright posture
  
  Neat gray hair • Neutral expression

  #v(0.5mm)

  #text(weight: "bold")[Mannerisms:]

  Hands behind back • Humble formal posture
  
  Observes silently (background) • Never interrupts
  
  SOFT voice • Slight English accent • "Sir/Madam"

  #v(0.5mm)

  #text(weight: "bold")[Who you are:]

  Clarence Worthington (63 years old) • English butler
  
  Served Ashford family 15 years • Loyal but honest

  #v(0.5mm)

  #text(weight: "bold")[Temperament:]

  FORMAL always • Humble • Silent observer
  
  "Invisible" (good servant) BUT saw EVERYTHING

  #v(0.5mm)

  #text(weight: "bold")[Signature Phrases:]

  "Excuse me, but..." • "If I may be so bold..."
  
  "Very good, sir/madam." • "I witnessed something..."

  #v(0.5mm)

  #text(weight: "bold", size: 10pt)[DUAL ROLE:]
  
  #text(size: 9pt)[1) IN-CHARACTER: Formal butler, witness
  
  2) META-GAME: Help GM (Helena) with game logistics]

  #v(1fr)
]

// ============================================
// PAGE 8: CRITICAL TESTIMONY (MEMORIZE!)
// ============================================
#pagebreak()

#v(0.2fr)
#align(center)[
  #section-title[10pm Testimony]
  
  #text(size: 10pt, weight: "bold")[MEMORIZE THIS! SOLVES THE CRIME!]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[WHEN: Act IV (~10:00pm)]
  
  #text(size: 9pt)[JC or Helena asks: "Clarence, did you see anything?"]

  #v(0.2mm)

  #text(weight: "bold", size: 10pt)[EXACT SCRIPT:]

  #v(0.1mm)

  #text(size: 9pt)[
[Steps forward, reluctant]

"I must speak... though it pains me greatly."

"I have served this family for 15 years. Loyalty is paramount. But..."

[Looks at Helena, looks away]

"I witnessed certain events tonight."

[Breathes - formal recitation]

"At eight-oh-nine precisely, Mrs. Ashford led master to the study."

"At eight-oh-eight - one minute before - I observed Mr. James Harrods. Near the study corridor. He appeared to be... waiting."

[Hard pause]

"At eight-seventeen, Mrs. Ashford left the study. Alone. Pale."

"Mr. Harrods entered the study shortly after. ~Eight-twelve. I did not see him leave."

[Looks at JC] "I found nothing suspicious at the time. But given the circumstances... I'm sorry, madam. I cannot lie about what I saw."]

  #v(0.2fr)
]

// ============================================
// PAGE 9: GM ASSISTANT & PERFORMANCE
// ============================================
#pagebreak()

#v(0.5fr)
#align(center)[
  #section-title[GM Assistant Role]
  
  #text(size: 10pt, weight: "bold")[HELP HELENA (GM) WHILE BEING CLARENCE]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[GM TASKS:]

  #text(size: 9pt)[Distribute clues: If Helena needs
  
  "Excuse me sir, I found this..." [Hands to JC]
  
  Manage timing: Combined signals with Helena
  
  Guide players: If stuck subtly
  
  "Perhaps examine..." • "Master kept records in..."
  
  Logistics: Props, costumes, technical problems]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[SIGNALS WITH HELENA:]

  #text(size: 9pt)[Arrange BEFORE game starts:
  
  Ex: Helena touches ear = "Give testimony now"
  
  Helena looks directly = "Need help"
  
  You straighten tie = "Act running long"]

  #v(0.3mm)

  #text(weight: "bold", size: 11pt)[CLARENCE PERFORMANCE:]

  #text(size: 9pt)[8:18pm-10:00pm: Invisible background
  
  Near wall • Hands behind • Observes silently
  
  10:00pm: TESTIMONY (crucial moment!)
  
  Slow, formal, reluctant but truthful]

  #v(0.5fr)
]

// ============================================
// PAGE 10: BACK COVER
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
