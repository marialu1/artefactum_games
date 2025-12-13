// ============================================
// DAISY VALMONT - QUICK SHEET
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

  Daisy Margot Valmont

  #text(weight: "bold")[Stage Name:]

  "The Scarlet Nightingale"

  #text(weight: "bold")[Age:]

  28 years

  #text(weight: "bold")[Profession:]

  Cabaret Singer at Cotton Club, Harlem
  
  Rising star (4 years since discovery)

  #text(weight: "bold")[Connection to Host:]

  Hired as entertainment (\$75 for 3 songs). Ex-lover (8 months affair, ended Aug 1926). Half-sister of Eleanor (Reggie's first wife who died 1923).

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

    DRAMATIC - Everything is theatre (performance as survival)

    EXPRESSIVE - Emotions big, visible, theatrical

    ROMANTIC but disillusioned after Reggie's betrayal

    SURVIVOR - Tough beneath glamour

    #v(0.3mm)

    #text(weight: "bold")[Mannerisms:]

    Touches pearls nervously (when lying/stressed)

    Fan flourishing for dramatic emphasis

    Sings responses when overwhelmed

    Language switches (French when emotional)

    #v(0.3mm)

    #text(weight: "bold")[Signature Phrases:]

    "Darling, this is simply TOO MUCH!" ♪

    "The show must go on, n'est-ce pas?"

    _"Mon Dieu!"_ (my God), _"Quelle horreur!"_ (how horrible)

    _[Hums melody instead of answering]_
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

  You are hired ENTERTAINMENT (\$75 for 3 songs). Professional relationship with Reggie (performed for his circle before). Rising star at Cotton Club, discovered by Filipp Moretti 4 years ago.

  #v(1fr)
]

// ============================================
// PAGE 5: PRIVATE SECRETS (Secrets #1 & #2)
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Private Secrets]

  #text(weight: "bold", fill: vintage-black)[Secret #1 - The Affair (Jan-Aug 1926):]

  8-month affair with Reggie (NOT for love - INFILTRATION). You seduced him to investigate Eleanor's death. Searched mansion 5-6 times. Found NOTHING. August: He dumped you by LETTER ("focus on marriage now"). RAGE not heartbreak (discarded like prop + mission failed).

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #2 - Eleanor Was Your Half-Sister:]

  Eleanor Ashford (Reggie's first wife, died 1923) = your HALF-SISTER. Same mother (Margot Beaumont). Separated 1911 (mother died - you 13, Eleanor 18). Eleanor married Reggie 1916, cut contact (he forbade "cabaret singer sister"). No contact 7 YEARS.

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

  #text(weight: "bold", fill: vintage-black)[Secret #3 - Eleanor's Death & The Letter (Oct 1923):]

  Two weeks before Eleanor died: Letter arrived. "Reginald forbids contact. I'm frightened. He's threatening. He said 'accidents happen to inconvenient wives.' If something happens to me... know it wasn't an accident." You wanted to go immediately. Filipp stopped you. Three days later: DEAD ("pneumonia"). You KNOW: Reggie murdered her. No proof (cremated, no autopsy). Letter = fear not proof. WHO'D BELIEVE CABARET SINGER?

  #v(0.5mm)

  #text(weight: "bold", fill: vintage-black)[Secret #4 - Tonight's REAL Mission:]

  Party = LAST CHANCE to find proof. Performance = cover for searching (office, library, bedroom). If find evidence: expose publicly? If find nothing: accept defeat, let Eleanor rest. DESPERATELY need answers or closure.

  #v(1fr)
]

// ============================================
// PAGE 7: GOALS + STATUS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Goals Tonight]

  Find truth about Eleanor's death (search during chaos)

  Prove YOUR innocence (obvious motive = dumped lover)

  Protect Filipp (your only family/he's your alibi)

  Emotional survival (grief beneath performance)

  #v(0.8mm)

  #section-title[Did You Kill Him?]

  #text(weight: "bold")[You did NOT kill Reggie.]

  NEEDED him alive (Eleanor answers). Performing 20h15-20h17 (ALIBI - entire room witnessed). Genuinely shocked when he dies (lost answers forever). Look guilty (motive, affair, drama) but INNOCENT.

  #v(1fr)
]

// ============================================
// PAGE 8: HOW TO PLAY
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[How to Play]

  #text(weight: "bold")[Sing when nervous/emotional:]

  Hums, sings replies instead of speaking. Entire sentences sung when very upset.

  #v(0.5mm)

  #text(weight: "bold")[Touch pearls when lying:]

  Unconscious tell - fingers go to throat. Others CAN notice.

  #v(0.5mm)

  #text(weight: "bold")[Use French when stressed:]

  More French = more emotional. Full sentences = VERY upset.

  #v(0.5mm)

  #text(weight: "bold")[Grand gestures always:]

  Arms sweep wide, hand to forehead, dramatic poses. Everything is PERFORMANCE.

  #v(0.5mm)

  #text(weight: "bold")[Defend Filipp fiercely:]

  "Papa is innocent!" He's your anchor, your witness, your family.

  #v(0.5mm)

  #text(weight: "bold")[NEVER reveal Eleanor (unless cornered):]

  Admission = complicates case. Keep secret unless absolutely forced.

  #v(1fr)
]

// ============================================
// PAGE 9: RELATIONSHIPS
// ============================================
#pagebreak()

#v(1fr)
#align(center)[
  #section-title[Your Key Relationships]

  #text(weight: "bold")[Reginald Ashford (Victim/Ex-Lover):]

  HATRED. Killed Eleanor (suspected), discarded you cruelly. Relief when dead but also frustration (answers lost).

  #v(0.5mm)

  #text(weight: "bold")[Helena Ashford (Hostess/Rival):]

  Cold war - polite daggers. She suspects affair. You feel guilt (betrayed her) + pity (trapped with Reggie).

  #v(0.5mm)

  #text(weight: "bold")[Filipp Moretti (Mentor/Father Figure):]

  LOVE - discovered you 4 years ago, launched career. Only person you're honest with. Calls you "bella", you call him "papa". Would die for him.

  #v(0.5mm)

  #text(weight: "bold")[John Alfred Jones (Detective):]

  WARINESS - will he uncover affair? Eleanor connection? Must stay in character around him.

  #v(0.5mm)

  #text(weight: "bold")[Maria Fletcher, Emilia, Others:]

  Friendly but GUARDED. Watch what you reveal. Everyone potential ally or threat.

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
