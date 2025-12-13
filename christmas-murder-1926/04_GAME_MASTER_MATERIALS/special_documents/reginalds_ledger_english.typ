// ═══════════════════════════════════════════════════════════════
// REGINALD ASHFORD'S PRIVATE LEDGER - ENGLISH VERSION
// Pages 47-49 - Critical Evidence Document
// Christmas Eve 1926
// ═══════════════════════════════════════════════════════════════

#set page(
  paper: "a4",
  margin: (left: 3cm, right: 2cm, top: 2.5cm, bottom: 2.5cm),
  fill: rgb("#F5E6D3"),  // Cream/tan aged paper
)

#set text(
  font: ("Brush Script MT", "Comic Sans MS", "Cursive"),
  size: 11pt,
  fill: rgb("#1C1C1C"),  // Dark blue-black ink
  lang: "en",
)

#set par(
  leading: 0.8em,
  spacing: 1.2em,
)

// Function to create ledger lines background
#let ledger-lines() = {
  place(
    top + left,
    dx: 0cm,
    dy: 0cm,
    block(
      width: 100%,
      height: 100%,
      {
        for i in range(0, 35) {
          place(
            top + left,
            dy: i * 0.8cm,
            line(length: 100%, stroke: 0.3pt + rgb("#D3D3D3"))
          )
        }
      }
    )
  )
}

// Underline helper for emphasis
#let underline-text(content) = {
  underline(stroke: 1pt, content)
}

// Page number helper
#let page-num(num) = {
  place(
    top + right,
    dx: -0.5cm,
    dy: -1cm,
    text(size: 10pt, weight: "bold", str(num))
  )
}

// Binding shadow on left
#let binding-shadow() = {
  place(
    left + top,
    dx: -2.5cm,
    dy: -2cm,
    rect(
      width: 0.5cm,
      height: 30cm,
      fill: gradient.linear(
        rgb("#8B7355").transparentize(30%),
        rgb("#F5E6D3"),
        angle: 0deg
      )
    )
  )
}

// ═══════════════════════════════════════════════════════════════
// FRONT COVER
// ═══════════════════════════════════════════════════════════════

#binding-shadow()

#v(5cm)

#align(center)[
  #text(size: 24pt, weight: "bold")[
    PRIVATE LEDGER
  ]
  
  #v(1cm)
  
  #text(size: 14pt, style: "italic")[
    Confidential Records
  ]
  
  #v(0.5cm)
  
  #text(size: 12pt)[
    —
  ]
  
  #v(0.5cm)
  
  #text(size: 16pt)[
    Reginald J. Ashford
  ]
  
  #v(0.3cm)
  
  #text(size: 11pt)[
    The Gatsby Rose Manor
  ]
  
  #v(0.3cm)
  
  #text(size: 11pt)[
    New York
  ]
  
  #v(1.5cm)
  
  #text(size: 10pt, style: "italic")[
    1926
  ]
]

#pagebreak()

// ═══════════════════════════════════════════════════════════════
// PAGE 47 - JAMES HARRODS - INVESTMENT FRAUD
// ═══════════════════════════════════════════════════════════════

#page-num(47)
#binding-shadow()
#ledger-lines()

#v(1.5cm)

#align(left)[
  #text(size: 13pt, weight: "bold")[
    JAMES HARRODS - INVESTMENT FRAUD
  ]
]

#v(0.8cm)

#text[
  *Oct 17:* Received documents from accountant. \
  Continental Railways Corp. #underline-text[DOES NOT EXIST].
]

#v(0.6cm)

#text[
  *Oct 19:* Private investigator confirms: \
  Harrods sold shares of 4 fictitious companies \
  to multiple clients. \
  Estimated total: \$47,000 fraud.
  
  To me alone: #underline-text[\$15,000].
]

#v(0.6cm)

#text[
  *Oct 23:* Consulted lawyers Pemberton & Associates. \
  Solid case. #underline-text[Prison 10-15 years] minimum.
]

#v(0.8cm)

#text[
  *DECISION:* Wait until after Christmas. \
  Formal denunciation: #underline-text[December 26th].
  
  Evidence with lawyer. Witnesses secured.
]

#pagebreak()

// ═══════════════════════════════════════════════════════════════
// PAGE 48 - HELENA - MARITAL SITUATION
// ═══════════════════════════════════════════════════════════════

#page-num(48)
#binding-shadow()
#ledger-lines()

#v(1.5cm)

#align(left)[
  #text(size: 13pt, weight: "bold")[
    HELENA - MARITAL SITUATION
  ]
]

#v(0.8cm)

#text[
  *Dec 12:* Private detective confirmed affair. \
  Lover: #underline-text[James Harrods (!!)]
]

#v(0.6cm)

#text[
  Photographs attached. Meetings: Hotel Chelsea (8x), \
  Café Carlyle (4x), 42nd St apartment (12x - his?)
  
  Duration: ~3 weeks to my knowledge. \
  Reality? Probably months.
]

#v(0.8cm)

#text[
  *Dec 17:* Lawyer prepared divorce. \
  Prenuptial agreement guarantees: she gets #underline-text[NOTHING]. \
  No alimony, no property.
  
  Will be notified #underline-text[January 2nd, 1927].
]

#pagebreak()

// ═══════════════════════════════════════════════════════════════
// PAGE 49 - FINAL ENTRY
// ═══════════════════════════════════════════════════════════════

#page-num(49)
#binding-shadow()
#ledger-lines()

#v(1.5cm)

#align(left)[
  #text(size: 13pt, weight: "bold")[
    FINAL ENTRY
  ]
]

#v(0.8cm)

#text[
  *December 24th, 6PM:*
  
  Party tonight. Both will come. \
  Helena. Harrods.
  
  They don't know that #underline-text[I KNOW everything].
  
  Tomorrow I destroy Harrods (prison). \
  Day after I destroy Helena (destitution).
  
  This is my last night as a fool.
  
  Starting tomorrow: #underline-text[JUSTICE].
]

#v(1.5cm)

// Final shaky line - lighter and with tremor effect
#text(
  fill: rgb("#1C1C1C").lighten(20%),
  style: "italic"
)[
  Or will it be my last night... period?
]

#pagebreak()

// ═══════════════════════════════════════════════════════════════
// BACK COVER
// ═══════════════════════════════════════════════════════════════

#binding-shadow()

#v(10cm)

#align(center)[
  #text(size: 12pt, style: "italic")[
    "The truth always comes to light"
  ]
  
  #v(2cm)
  
  #text(size: 10pt)[
    —
  ]
  
  #v(2cm)
  
  #text(size: 9pt, style: "italic")[
    This ledger was discovered in the private safe \
    of Reginald J. Ashford on the night of his death, \
    December 24th, 1926
  ]
]
