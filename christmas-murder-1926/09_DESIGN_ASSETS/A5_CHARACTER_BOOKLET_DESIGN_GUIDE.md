# A5 Character Booklet Design Guide
## Christmas Murder Dinner 1926

**Purpose:** Complete design system and specifications for 11 character booklets  
**Format:** A5 (148 × 210 mm) portrait orientation  
**Last Updated:** October 7, 2025

---

## 📐 TECHNICAL SPECIFICATIONS

### Format & Dimensions

```
Physical Size: 148 × 210 mm (A5)
Orientation: Portrait (vertical)
Page Count: 12-16 pages per booklet
Binding: Saddle-stitch or perfect bound
Paper: 160-200g cream/ivory cardstock
Finish: Matte (no gloss)
```

### Print Specifications

```
Resolution: 300 DPI minimum
Color Mode: CMYK (print) / RGB (digital)
Bleed: 3mm all sides (if professional printing)
Safe Area: 10mm margin from trim
File Format: PDF/X-1a (print) / High-res PNG (digital)
```

### Margins & Safe Zones

```
Top Margin: 12mm
Bottom Margin: 12mm  
Outer Margin: 12mm
Inner Margin (binding): 15mm
Running Text Maximum Width: 120mm (80% of page width)
```

---

## 🎨 DESIGN SYSTEM

### Color Palette

```css
/* Primary Colors */
--background-cream: #f5f0e8;        /* Aged paper base */
--text-dark-sepia: #3d2817;         /* Main text, headings */
--text-black: #1a1a1a;              /* Body text, high contrast */

/* Accent Colors */
--confidential-red: #cc0000;        /* Stamp only */
--ornament-black: #1a1a1a;          /* Frame decorations */
--subtle-brown: #8b7355;            /* Dividers, subtle elements */

/* Photo Effects */
--sepia-base: rgba(112, 66, 20, 0.4);  /* Sepia overlay for photos */
```

### Typography System

#### Display Fonts (Titles, Names, Decorative)

**Primary Script Font:**
```
Font: Edwardian Script ITC / Great Vibes / Allura
Use: Character names, section titles, decorative headers
Sizes:
  - Character Name (Cover): 48-52pt
  - Section Titles: 40-48pt
  - Sub-headings: 32-40pt
  - Small decorative: 20-28pt
Weight: Regular
Color: #3d2817 (dark sepia)
Line-height: 1.2
```

**Alternative Script Fonts:**
- Kunstler Script
- Pinyon Script
- Tangerine (Google Fonts - free)
- Alex Brush
- Allura

#### Body Fonts (Readable Text)

**Primary Serif Font:**
```
Font: Garamond / Baskerville / Libre Baskerville
Use: All body text, lists, descriptions
Sizes:
  - Body text: 11-12pt (minimum for A5)
  - Emphasized text: 14-16pt
  - Small print: 9-10pt (use sparingly)
Weight: Regular (body), Semi-Bold (names in lists)
Color: #1a1a1a (black)
Line-height: 1.5-1.6
Alignment: Left-aligned or justified (for paragraphs)
```

**Alternative Serif Fonts:**
- Crimson Text (Google Fonts)
- Playfair Display
- EB Garamond
- Lora

#### Font Pairing Rules

```
✅ DO:
- Script for titles + Serif for body
- Maintain 3:1 size ratio (title:body minimum)
- Use script sparingly (decorative only)
- Keep body text in clean serif

❌ DON'T:
- Mix multiple script fonts
- Use script for long paragraphs
- Go below 11pt for body text (A5 is small!)
- Use sans-serif (breaks period aesthetic)
```

---

## 📄 PAGE TEMPLATES

### Page 1: COVER (Front)

#### Layout Option A: Horizontal Split (Current Design)

```
┌─────────────────────────────┐
│ LEFT (50%)    │ RIGHT (50%) │
├───────────────┼─────────────┤
│               │             │
│ Filipp        │ The Gatsby  │
│ Moretti       │ Rose Manor  │
│ (Script 48pt) │ (Script 42) │
│               │ Est. 1889   │
│ "The Silver   │             │
│  Fox"         │ ┌─────────┐ │
│ (Script 36pt) │ │ORNATE   │ │
│               │ │BAROQUE  │ │
│ Little Italy  │ │FRAME    │ │
│ Manhattan     │ │  WITH   │ │
│ (Script 40pt) │ │ PHOTO   │ │
│               │ │ CENTER  │ │
│               │ └─────────┘ │
│               │             │
│               │CONFIDENTIAL │
│               │  (Red 72pt) │
│               │             │
│               │ Ficha de    │
│               │ Personagem  │
└───────────────┴─────────────┘
```

**Elements Left Side:**
- Character Name (centered, script, 48-52pt)
- Nickname in quotes (centered, script, 36-40pt)
- Location (centered, script, 40-44pt)
- Generous whitespace (minimalist)
- Color: All text #3d2817

**Elements Right Side:**
- Title "The Gatsby Rose Manor" (top, script, 42-48pt)
- "Est. 1889" (below title, script italic, 24-28pt)
- Ornamental baroque frame (center, 60% height)
  - Contains sepia photo (oval/portrait format)
  - Angels/cherubs at top
  - Scrollwork sides
  - Name cartouche at base
- "CONFIDENTIAL" stamp (diagonal ~30°, red, over photo)
  - Font: Bold sans-serif caps
  - Size: 72-80pt
  - Opacity: 65-75%
  - Double rectangle border
- "Ficha de Personagem" (bottom, script, 32-36pt)

---

#### Layout Option B: Vertical Full (Optimized for A5)

```
┌─────────────────────────────┐
│  The Gatsby Rose Manor      │  ← Top (script, 36pt)
│       Est. 1889             │
├─────────────────────────────┤
│                             │
│      ┌─────────────┐        │
│      │  ORNATE     │        │  ← Frame (larger, 70% height)
│      │  BAROQUE    │        │
│      │   FRAME     │        │
│      │             │        │
│      │   PHOTO     │        │
│      │   INSIDE    │        │
│      │             │        │
│      │  Filipp     │        │  ← Name in cartouche
│      │  Moretti    │        │
│      └─────────────┘        │
│                             │
│  CONFIDENTIAL ↗             │  ← Stamp (diagonal)
│                             │
├─────────────────────────────┤
│    Filipp Moretti           │  ← Name (script, 52pt)
│    "The Silver Fox"         │  ← Nickname (script, 40pt)
│                             │
│    Little Italy             │  ← Location (script, 36pt)
│    Manhattan                │
│                             │
│    Ficha de Personagem      │  ← Footer (script, 28pt)
└─────────────────────────────┘
```

**Advantages Option B:**
- Better use of vertical A5 space
- Larger ornamental frame (more impressive)
- Photo more prominent
- Cleaner information hierarchy

**Recommendation:** Option B for final production

---

### Page 2: IDENTITY (Inside Front Cover)

```
┌─────────────────────────────┐
│                             │
│        Identity             │  ← Title (script, 48pt, centered)
│                             │
│     ┌─────────────┐         │
│     │  ORNATE     │         │  ← Frame (small, 40% size)
│     │  FRAME      │         │
│     │  + PHOTO    │         │
│     └─────────────┘         │
│                             │
│         Name                │  ← Label (script, 40pt)
│   Filipp Antonio Moretti    │  ← Content (serif, 20pt)
│                             │
│         Age                 │  ← Label (script, 36pt)
│          38                 │  ← Content (serif, 18pt)
│                             │
│      Profession             │  ← Label (script, 36pt)
│   Empresário nocturno       │  ← Content (serif, 16pt)
│   • Dono 3 speakeasies      │    (bullet list format)
│   • "Silver Fox Lounge"     │
│   • Fornecedor bebidas      │
│     premium ilegais         │
│                             │
│  Connection to Host         │  ← Label (script, 36pt)
│  Forneceu ponche especial   │  ← Content (serif, 16pt)
│  para festa ($85). Relação  │    (paragraph, justified)
│  profissional/social 2 anos.│
│                             │
└─────────────────────────────┘
```

**Content Structure:**
- Centered alignment for titles
- Left-aligned or justified for longer text
- Generous spacing between sections (15-20pt)
- Bullet lists for multi-item professions
- Maximum 4-5 sections on this page

---

### Pages 3-4: RELATIONSHIPS (Spread)

```
LEFT PAGE                      RIGHT PAGE
┌─────────────┐               ┌─────────────┐
│ ◆◆◆         │               │    ◆◆◆      │  ← Decorative divider
│             │               │             │
│Your         │               │(continued)  │
│Relationships│               │             │
│             │               │             │
│REGINALD     │               │HELENA       │  ← Name (bold, 16pt)
│ASHFORD      │               │ASHFORD      │
│(Vítima)     │               │             │
│Roubou       │               │Conheces há  │  ← Description (regular)
│receita      │               │2 anos...    │     (serif, 14pt)
│Silver Fox...│               │             │
│             │               │             │
│DAISY        │               │PADRE RUI    │
│VALMONT      │               │SANTOS       │
│Amor         │               │Teu          │
│PATERNAL...  │               │confessor... │
│             │               │             │
│(continue...)│               │(continue...)│
│             │               │    ◆◆◆      │  ← Bottom divider
└─────────────┘               └─────────────┘
```

**Format for Each Relationship:**
```
NAME (ROLE/TITLE)
Bold serif, 16-18pt, CAPS or Bold
Example: REGINALD ASHFORD (Vítima/Host)

Description of relationship:
Regular serif, 14-16pt, left-aligned or justified
Line-height: 1.5
Indentation: 3-5mm from left margin

Spacing between entries: 15-20pt vertical
```

**Optional: Relationship Symbols**
```
❤️ Romance/Love          🎭 Shared Secret
💼 Business              ⚔️ Conflict/Enemy
🤝 Alliance/Friend       ❓ Suspicion
```

---

### Pages 5-6: PERSONALITY & MANNERISMS (Spread)

```
LEFT PAGE                      RIGHT PAGE
┌─────────────┐               ┌─────────────┐
│    ◆◆◆      │               │    ◆◆◆      │
│             │               │             │
│Personality  │               │Mannerisms   │  ← Title (script, 44pt)
│             │               │             │
│• CARISMÁTICO│               │• Sorri      │  ← List format
│  italiano   │               │  frequente  │     (dash/bullet)
│  clássico   │               │             │     (serif, 15pt)
│             │               │• Gesticula  │
│• Pragmático │               │  muito com  │
│  (negócios  │               │  as mãos    │
│  primeiro)  │               │             │
│             │               │• Toca       │
│• Protetor   │               │  bigode ao  │
│  feroz      │               │  pensar     │
│  (Daisy)    │               │             │
│             │               │             │
│• Calculista │               │Signature    │  ← Section (script, 38pt)
│  mas com    │               │Phrases      │
│  coração    │               │             │
│             │               │• "Mio Dio!  │  ← Italic serif, 14pt
│• Charmoso   │               │   Che       │     (quotes in italics)
│  natural    │               │   disgrazia!"│
│             │               │             │
│             │               │• "Bellissima│
│             │               │   serata!"  │
│             │               │             │
│    ◆◆◆      │               │    ◆◆◆      │
└─────────────┘               └─────────────┘
```

---

### Pages 7-8: BACKSTORY (Spread)

```
┌─────────────┐               ┌─────────────┐
│    ◆◆◆      │               │             │
│             │               │             │
│  Backstory  │               │(continued)  │  ← Title only on left
│             │               │             │
│Your full    │               │Later, you   │  ← Body paragraphs
│story begins │               │discovered   │     (serif, 11-12pt)
│in Little    │               │your true    │     (justified text)
│Italy,       │               │calling...   │     (1.5 line-height)
│Manhattan... │               │             │
│             │               │             │
│[Paragraph 1]│               │[Paragraph 3]│
│Lorem ipsum  │               │Lorem ipsum  │
│dolor sit    │               │dolor sit    │
│amet...      │               │amet...      │
│             │               │             │
│[Paragraph 2]│               │[Paragraph 4]│
│Lorem ipsum  │               │Lorem ipsum  │
│dolor sit    │               │amet...      │
│amet...      │               │             │
│             │               │             │
└─────────────┘               └─────────────┘
```

**Formatting:**
- Justified paragraphs for narrative flow
- First line indent: 5mm (after first paragraph)
- No indent on first paragraph of section
- Paragraph spacing: 8-10pt between paragraphs

---

### Pages 9-10: SECRETS & OBJECTIVES (Spread)

```
LEFT PAGE                      RIGHT PAGE
┌─────────────┐               ┌─────────────┐
│    ◆◆◆      │               │    ◆◆◆      │
│             │               │             │
│Your Secrets │               │Your         │  ← Titles (script)
│             │               │Objectives   │
│What You KNOW│               │             │
│• Reggie stole│               │Tonight you  │  ← Subtitle (script, 32pt)
│  your Silver │               │MUST:        │
│  Fox recipe  │               │             │
│              │               │1. Confront  │  ← Numbered list
│• James owes  │               │   Reggie    │     (serif, 14pt)
│  you $500    │               │   about     │
│              │               │   recipe    │
│What You HIDE │               │   theft     │
│• Your        │               │             │
│  speakeasies │               │2. Protect   │
│  are front   │               │   Daisy from│
│  for bootleg │               │   scandal   │
│              │               │             │
│What You      │               │3. Collect   │
│SUSPECT       │               │   debt from │
│• Helena and  │               │   James     │
│  James having│               │             │
│  affair      │               │DO NOT       │  ← Warning section
│              │               │REVEAL:      │     (bold, 16pt)
│    ◆◆◆      │               │• Your real  │
└─────────────┘               │  business   │
                               │• Daisy      │
                               │  connection │
                               │    ◆◆◆      │
                               └─────────────┘
```

---

### Pages 11-12: HOW TO PLAY (Spread)

```
LEFT PAGE                      RIGHT PAGE
┌─────────────┐               ┌─────────────┐
│    ◆◆◆      │               │    ◆◆◆      │
│             │               │             │
│How to Play  │               │Key Moments  │  ← Sections (script)
│This Character│               │             │
│             │               │ACT I        │  ← Act markers (bold)
│Voice & Tone │               │• Arrive     │
│Speak with   │               │  with       │
│Italian      │               │  confidence │
│accent...    │               │             │
│             │               │ACT II       │
│Body Language│               │• When       │
│Stand tall,  │               │  Reggie     │
│gesture      │               │  dies...    │
│expressively │               │             │
│             │               │ACT III      │
│Reactions    │               │• If         │
│When accused:│               │  accused... │
│Stay calm... │               │             │
│             │               │             │
│Relationships│               │Remember     │  ← Final tips
│Treat Daisy  │               │• Stay in    │
│as daughter..│               │  character  │
│             │               │• Have fun!  │
│    ◆◆◆      │               │    ◆◆◆      │
└─────────────┘               └─────────────┘
```

---

### Page 13: NOTES (Back Matter)

```
┌─────────────────────────────┐
│                             │
│    ◆──────────◆             │
│                             │
│         Notes               │  ← Title (script, 44pt)
│                             │
│    Use this space to        │  ← Instructions (serif, 12pt)
│    record your discoveries  │
│    and suspicions during    │
│    the investigation        │
│                             │
│  ________________________   │  ← Blank lines for writing
│                             │
│  ________________________   │
│                             │
│  ________________________   │
│                             │
│  ________________________   │
│                             │
│  ________________________   │
│                             │
│  ________________________   │
│                             │
│  ________________________   │
│                             │
│  ________________________   │
│                             │
│    ◆──────────◆             │
│                             │
└─────────────────────────────┘
```

---

### Page 14: BACK COVER

#### Option A: Quote & Decoration
```
┌─────────────────────────────┐
│                             │
│    ◆──────────◆             │
│                             │
│                             │
│    "In this city, even      │  ← Character quote
│    the Silver Fox must      │     (script italic, 36pt)
│    watch his back..."       │     (centered)
│                             │
│    — Filipp Moretti         │     (attribution, 24pt)
│                             │
│                             │
│       [ART DECO             │  ← Decorative symbol
│        ORNAMENT]            │     (centered)
│                             │
│                             │
│    Christmas Murder         │  ← Footer info
│    Dinner 1926              │     (serif, 14pt)
│                             │
│    The Gatsby Rose Manor    │     (centered)
│                             │
│    ◆──────────◆             │
│                             │
└─────────────────────────────┘
```

#### Option B: Reference Grid (Utilitarian)
```
┌─────────────────────────────┐
│    ◆──────────◆             │
│                             │
│   Quick Reference           │  ← Title (script)
│                             │
│   Your Role:                │  ← Key info boxes
│   Filipp Moretti            │
│   "The Silver Fox"          │
│                             │
│   Primary Goal:             │
│   Confront Reggie           │
│                             │
│   Key Secret:               │
│   [Redacted - see pg. 9]    │
│                             │
│   Main Relationships:       │
│   • Daisy (protect)         │
│   • Reggie (confront)       │
│   • James (collect debt)    │
│                             │
│   Remember:                 │
│   Stay in character!        │
│                             │
│    ◆──────────◆             │
└─────────────────────────────┘
```

**Recommendation:** Option A (more atmospheric)

---

## 🖼️ DECORATIVE ELEMENTS

### Ornamental Baroque Frame

**Specifications:**
```
Style: Victorian/Baroque engraving (black linework)
Format: SVG or high-res PNG (transparent background)
Elements Required:
  - Two angels/cherubins (top, holding central element)
  - Elaborate scrollwork (sides, flowing curves)
  - Acanthus leaves (decorative foliage)
  - Central oval/portrait opening (for photo)
  - Banner/cartouche (base, for name label)
Dimensions:
  - Cover: 60-70% of right column height
  - Identity page: 35-45% of cover size
Color: #1a1a1a (black/very dark gray)
Line weight: 2-4pt (detailed but visible when printed)
```

**Source Recommendations:**
- Freepik: "baroque ornamental frame vector"
- Vecteezy: "victorian frame cherub"
- The Graphics Fairy (public domain)
- Canva Elements: Search "baroque frame" "vintage ornament"

**Search Terms:**
- baroque frame cherub
- victorian ornamental border
- art nouveau frame vector
- vintage engraving frame
- rococo ornament
- angel frame decorative

---

### Decorative Dividers

**Style 1: Diamond Triple (◆◆◆)**
```
Structure: Line — ◆◆◆ — Line
Line: 1-2pt, #8b7355 (subtle brown)
Length: 30-35% page width each side
Diamonds: 8-10pt, same color
Spacing: 5-8pt between diamonds
Position: Centered on page
Usage: Section dividers, top/bottom page borders
```

**Style 2: Floral (❦❦❦)**
```
For romantic/emotional sections (Relationships)
Same structure as diamond version
Symbol: Fleuron or floral ornament
```

**Style 3: Fleur-de-lis (⚜⚜⚜)**
```
For personality/character trait sections
French/elegant aesthetic
```

**CSS/HTML Example:**
```html
<div class="divider">
  <span class="line"></span>
  <span class="ornaments">◆◆◆</span>
  <span class="line"></span>
</div>
```

```css
.divider {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 20px 0;
  color: #8b7355;
}

.line {
  flex: 1;
  height: 1px;
  background-color: currentColor;
  max-width: 35%;
}

.ornaments {
  margin: 0 15px;
  font-size: 10pt;
  letter-spacing: 0.5em;
}
```

---

### "CONFIDENTIAL" Stamp

**Specifications:**
```
Text: CONFIDENTIAL
Font: Sans-serif condensed bold (Impact, Franklin Gothic Heavy)
Size: 72-80pt
Color: #cc0000 (bright red)
Transform: rotate(-28deg to -32deg)
Opacity: 65-75%
Border: 4-6px double border, same red
Padding: 10-15px inside border
Letter-spacing: 0.15-0.2em (slightly tracked out)
Position: Over photo, slightly off-center
Optional additions:
  - "DOSSIER #[NUMBER]" (below, 32pt)
  - "DEC 1926" (below, 24pt)
```

**Texture Effects (Optional):**
```css
/* Vintage stamp texture */
filter: contrast(1.1) brightness(0.95);
/* Add subtle noise texture overlay */
background-image: url('noise-texture.png');
background-blend-mode: multiply;
opacity: 0.7;
```

**Creating Irregular Edges (Advanced):**
Use SVG path with slight irregularities to simulate rubber stamp wear

---

## 📷 PHOTOGRAPHY GUIDELINES

### Character Photos

**Style Requirements:**
```
Period: 1920s aesthetic
Color: Sepia-toned or black & white
Pose: Formal portrait style
Costume: Period-appropriate clothing
  - Men: Suit, tie, vest, suspenders
  - Women: Drop-waist dress, cloche hat, pearls
Expression: Character-appropriate
  - Filipp: Confident, slight smile
  - James: Serious, calculating
  - Daisy: Dramatic, theatrical
  - etc.
```

**Format:**
```
Shape: Oval or rectangular (vintage portrait style)
Resolution: Minimum 300 DPI at print size
Size at print: ~50-60mm width in frame
Format: JPG or PNG
```

**Sepia Effect (If Needed):**
```css
/* CSS filter for web */
filter: sepia(80%) contrast(1.1) brightness(0.95);

/* Or Photoshop adjustment layers: */
1. Desaturate image
2. Apply warm yellow-brown color overlay
3. Curves: Slight S-curve for contrast
4. Add subtle vignette
```

**Photo Sources:**
- AI Generation (MidJourney, DALL-E 3): "1920s formal portrait, sepia tone"
- Stock photos: Unsplash, Pexels (search "vintage portrait")
- Real photoshoot with period costumes
- Historical photo collections (public domain)

---

## 🎯 PRODUCTION WORKFLOW

### 1. Design Phase (Per Character)

```
✅ Gather content from character notes files
✅ Prepare/generate character photo
✅ Find/prepare ornamental frame image
✅ Set up page layout in chosen software:
   - Canva (easiest, templates)
   - Adobe InDesign (professional)
   - Affinity Publisher (affordable alternative)
   - Google Slides (free, export as PDF)
```

### 2. Layout Software Setup

**Page Setup:**
```
Document size: 148 × 210 mm (A5)
Units: Millimeters
Facing pages: Yes (for spreads)
Margins: 
  - Top: 12mm
  - Bottom: 12mm
  - Inside: 15mm
  - Outside: 12mm
Bleed: 3mm (if printing professionally)
```

**Master Pages:**
```
Create 3 master page templates:
1. Cover (full-page design)
2. Standard Interior (with dividers)
3. Blank (for notes page)
```

### 3. Content Population Order

**For each character:**
```
1. Cover → identity info + photo
2. Identity page → basic stats
3. Relationships → from character notes
4. Personality → from character analysis
5. Backstory → synthesize from notes
6. Secrets → extract from character analysis
7. Objectives → create based on character motivations
8. How to Play → roleplay tips
9. Notes → blank template
10. Back cover → character quote or reference
```

### 4. Quality Control Checklist

**Before finalizing each booklet:**
```
□ All character-specific information accurate
□ Consistent with MEMORY_BANK.md facts
□ No contradictions with other characters
□ Photo properly sized and positioned
□ Confidential stamp visible but not obscuring photo
□ All text readable at print size (test print!)
□ Page numbers correct (if using)
□ Dividers aligned and consistent
□ Margins respected (safe area)
□ Spelling checked (names, places, dates)
□ Character name matches throughout
□ Player name assigned (if listing)
```

### 5. Export Settings

**For Print:**
```
Format: PDF/X-1a or PDF/X-4
Color: CMYK
Resolution: 300 DPI
Fonts: Embedded
Bleed: 3mm included
Crop marks: Include
Filename: CHARACTER_NAME_Booklet_PRINT.pdf
```

**For Digital Preview:**
```
Format: High-res PNG or PDF (RGB)
Resolution: 150-300 DPI (for screen viewing)
Color: RGB
Filename: CHARACTER_NAME_Booklet_PREVIEW.pdf
```

### 6. Test Print Protocol

**Critical: Print one complete booklet first!**
```
1. Print on actual paper stock (cream 160-200g)
2. Check:
   □ Text legibility (especially 11-12pt body text)
   □ Colors accurate (sepia tone, red stamp)
   □ Margins appropriate (binding side)
   □ Frame details visible
   □ Overall aesthetic matches vision
3. Adjust as needed before printing all 11
4. Get second opinion (fresh eyes)
```

---

## 📦 PRINTING OPTIONS

### Option 1: Professional Print Shop

**Best for:**
- High quality requirements
- 11+ copies needed
- Perfect binding desired

**Specifications to provide:**
```
Format: A5 booklet (148×210mm)
Pages: 16 pages (4 sheets folded)
Paper: 160-200g cream/ivory cardstock
Binding: Saddle-stitch or perfect bound
Colors: Full color (CMYK) or black + spot red
Quantity: 11 booklets
Finish: Matte
Files: PDF/X-1a with 3mm bleed
```

**Cost estimate:** €3-7 per booklet (professional quality)

---

### Option 2: Home/Office Printer

**Best for:**
- Budget-conscious
- Immediate turnaround
- DIY aesthetic

**Requirements:**
```
Printer: Color inkjet or laser (min. 1200 DPI)
Paper: A4 cream/ivory cardstock 160g
  (Print 2 A5 pages per A4, trim down)
Binding: DIY saddle-stitch (staples) or fold & glue
Red ink: Separate red stamp (DIY option)
```

**Cost estimate:** €0.50-2 per booklet (materials only)

**DIY Binding Tutorial:**
```
1. Print pages on A4, 2-up layout
2. Cut A4 sheets to A5 size (paper trimmer)
3. Fold all pages in half (create booklet)
4. Saddle-stitch binding:
   - Stack pages nested
   - Staple along spine (2-3 staples)
   - Use long-reach stapler or punch holes first
5. Alternative: Perfect binding
   - Stack pages aligned (not nested)
   - Glue spine with bookbinding glue
   - Clamp until dry
```

---

### Option 3: Hybrid (Best Recommendation)

**Process:**
```
1. Print covers + identity pages in color (professional)
2. Print interior pages in black only (home printer)
3. DIY "CONFIDENTIAL" stamp:
   - Buy custom rubber stamp (red ink)
   - Hand-stamp each cover
   - Unique, theatrical, cost-effective
4. Hand-bind with saddle-stitch or ribbon
```

**Advantages:**
- Professional quality where it matters (covers)
- Budget-friendly for interior pages
- Hand-stamped covers = each booklet unique
- Theatrical authenticity (real stamps!)

**Cost estimate:** €1.50-3 per booklet

---

## 🎨 CANVA TEMPLATE SETUP (If Using Canva)

### 1. Create Base Template

```
1. Open Canva → Custom Size → 148 x 210 mm
2. Set up first page (cover)
3. Add pages (minimum 14 for content + covers)
4. Upload assets:
   - Ornamental frame PNG/SVG
   - Character photos (all 11)
   - Decorative divider graphics
5. Create text styles:
   - "Character Name" (script, 48pt, #3d2817)
   - "Section Title" (script, 40pt, #3d2817)
   - "Body Text" (serif, 11pt, #1a1a1a)
   - "Quote" (serif italic, 14pt, #3d2817)
```

### 2. Set Up Master Elements

```
Add to each page type:
- Background: Cream texture (#f5f0e8 or image)
- Guides: Margin lines (12mm from edges)
- Dividers: ◆◆◆ graphics
- Page templates saved in Canva folder
```

### 3. Create Character Variants

```
Duplicate template 11 times
Rename each: "[CHARACTER_NAME]_Booklet"
Fill in character-specific content
Replace photos
Adjust text to fit
```

### 4. Export Settings

```
File type: PDF - Print
Quality: High (300 DPI)
Flatten PDF: Yes
Crop marks & bleed: Yes (if available)
Download all 11 booklets
```

---

## 📋 CONTENT GUIDELINES

### Writing Style

**Tone:**
- Formal but accessible
- Period-appropriate language (avoid modern slang)
- Character-specific voice in "How to Play" section
- Direct address ("you", "your") for player engagement

**Sentence Structure:**
```
✅ Clear, concise sentences
✅ Active voice preferred
✅ Vary sentence length (rhythm)
✅ Break long paragraphs (max 6-7 lines)

❌ Overly complex nested clauses
❌ Modern idioms or slang
❌ Wall of text (poor readability A5)
```

### Information Hierarchy

**What Players MUST Know (Priority 1):**
- Character identity, profession, age
- Connection to host/victim
- Primary objectives tonight
- Key relationships (who to talk to)
- Critical secrets (what NOT to reveal)

**What Players SHOULD Know (Priority 2):**
- Full backstory
- Personality nuances
- Mannerisms and phrases
- How to roleplay effectively

**What Players MAY Know (Priority 3):**
- Minor relationships
- Subtle character details
- Historical context

**Ordering principle:**
Priority 1 info in first 4 pages, Priority 2 in middle pages, Priority 3 can be omitted if space tight.

---

## 🔧 TECHNICAL TROUBLESHOOTING

### Common Issues & Solutions

#### Issue: Text too small when printed
**Solution:** 
- Minimum 11pt for body text on A5
- Test print before finalizing all
- Increase font size, reduce content if needed

#### Issue: Colors look different when printed
**Solution:**
- Use CMYK color mode for print
- Request color proof from print shop
- Expect slight variation (screen vs. print)

#### Issue: Frame details lost when printed
**Solution:**
- Use high-res vector (SVG) or 300+ DPI raster
- Increase line weight slightly (2-3pt minimum)
- Test print on actual paper stock

#### Issue: Confidential stamp too faint
**Solution:**
- Increase opacity to 70-80%
- Use brighter red (#d32f2f or #cc0000)
- Print on white paper layer under red

#### Issue: Binding cuts into text
**Solution:**
- Increase inner margin to 15-18mm
- Test fold before printing all
- Shift text away from spine edge

---

## 📁 FILE ORGANIZATION

### Recommended Structure

```
09_DESIGN_ASSETS/
├── character_booklets/
│   ├── _MASTER_TEMPLATE/
│   │   ├── booklet_template.canva
│   │   ├── booklet_template.indd
│   │   ├── booklet_template.pdf
│   │   └── README_TEMPLATE.md
│   │
│   ├── 01_JC_Mendes/
│   │   ├── JC_Mendes_Booklet_EDIT.canva
│   │   ├── JC_Mendes_Booklet_PRINT.pdf
│   │   ├── JC_Mendes_Booklet_PREVIEW.png
│   │   └── jc_photo_sepia.jpg
│   │
│   ├── 02_Helena_Ashford/
│   │   ├── Helena_Ashford_Booklet_EDIT.canva
│   │   ├── Helena_Ashford_Booklet_PRINT.pdf
│   │   ├── Helena_Ashford_Booklet_PREVIEW.png
│   │   └── helena_photo_sepia.jpg
│   │
│   └── [... continue for all 11 characters]
│
├── assets/
│   ├── frames/
│   │   ├── baroque_frame_main.svg
│   │   ├── baroque_frame_main.png
│   │   └── frame_sources.txt
│   │
│   ├── dividers/
│   │   ├── diamond_divider.svg
│   │   ├── floral_divider.svg
│   │   └── fleurdelis_divider.svg
│   │
│   ├── stamps/
│   │   ├── confidential_stamp.png
│   │   └── confidential_stamp.svg
│   │
│   └── photos/
│       ├── all_characters_sepia/
│       └── photo_editing_notes.txt
│
└── A5_CHARACTER_BOOKLET_DESIGN_GUIDE.md (this file)
```

---

## ✅ FINAL CHECKLIST (Before Printing All 11)

### Design Verification
```
□ All 11 booklets created
□ Each booklet contains correct character info
□ Photos match characters
□ No typos in names or key facts
□ Consistent formatting across all booklets
□ Page count consistent (all 12-16 pages)
```

### Technical Verification
```
□ All files exported as PDF/X-1a (print)
□ Resolution 300 DPI minimum
□ Colors in CMYK mode
□ Fonts embedded
□ Bleed included (3mm)
□ Margins respected (safe area)
□ Test print completed and approved
```

### Content Verification
```
□ Character facts match MEMORY_BANK.md
□ No contradictions between characters
□ Relationships reciprocal (A knows B, B knows A)
□ Secrets appropriate (not revealing killers)
□ Objectives achievable during game
□ "How to Play" sections helpful
```

### Production Ready
```
□ Print shop selected or home printer ready
□ Paper stock purchased (cream 160-200g)
□ Binding method decided (saddle-stitch/perfect)
□ Timeline set (allow 1-2 weeks for professional printing)
□ Budget confirmed
□ Backup copies saved (cloud + local)
```

---

## 📞 QUICK REFERENCE

**Format:** A5 (148×210mm) portrait, 12-16 pages  
**Paper:** 160-200g cream cardstock, matte finish  
**Fonts:** Script (titles) + Serif (body)  
**Colors:** Cream background, sepia text, red stamp only  
**Key Pages:** Cover, Identity, Relationships, Personality, Secrets, Objectives, How to Play  
**Binding:** Saddle-stitch or perfect bound  
**Quantity:** 11 booklets (one per character)

**Time Estimate:**
- Design master template: 4-6 hours
- Adapt for each character: 1-2 hours each (11-22 hours total)
- Print & bind (DIY): 3-4 hours
- Print & bind (professional): 1-2 weeks turnaround

**Cost Estimate:**
- Professional print: €35-80 total (11 booklets)
- DIY print: €8-25 total (11 booklets)
- Hybrid: €15-35 total (11 booklets)

---

**STATUS:** ✅ Complete Design System  
**Last Updated:** October 7, 2025  
**Ready for:** Character content population and production

---

*This design guide provides complete specifications for creating 11 consistent, period-appropriate, professional-quality character booklets for the Christmas Murder Dinner 1926 game.*
