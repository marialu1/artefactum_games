# Booklet Layout Workflow - A4 Landscape to A5 Saddle-Stitch Booklet

**Created:** October 8, 2025  
**Purpose:** Convert Canva A4 landscape designs (2×A5 per page) into proper saddle-stitch booklets  
**Status:** ✅ Complete workflow for all 11 character booklets

---

## 📊 ADRIANA'S PDF ANALYSIS RESULTS

### Current Structure:
- **PDF Format:** 6 A4 landscape pages
- **File Size:** 8.7 MB
- **When split vertically:** 12 A5 portrait pages
- **Booklet compatibility:** ✅ PERFECT (12 ÷ 4 = 3, no blank pages needed)

### Page Content Map:

| A4 Page | A5 Left | A5 Right | Content Type |
|---------|---------|----------|--------------|
| Page 1  | 1       | 2        | Cover + Identity/Start |
| Page 2  | 3       | 4        | Identity/Relationships |
| Page 3  | 5       | 6        | Personality/Mannerisms |
| Page 4  | 7       | 8        | Secrets (layered) |
| Page 5  | 9       | 10       | Goals/How to Play |
| Page 6  | 11      | 12       | How to Play/Back |

---

## 📖 SADDLE-STITCH BOOKLET EXPLAINED

### What is Saddle-Stitch?
- Stack of folded sheets nested inside each other
- Stapled along the center fold (spine)
- Opens like a magazine
- **Page count must be divisible by 4**

### How Pages Stack:

```
Sheet 1 (outermost):
  Front: [12] [1]  ← Back cover | Front cover
  Back:  [2]  [11] ← Page 2     | Page 11

Sheet 2 (middle):
  Front: [10] [3]  ← Page 10    | Page 3
  Back:  [4]  [9]  ← Page 4     | Page 9

Sheet 3 (innermost):
  Front: [8]  [5]  ← Page 8     | Page 5
  Back:  [6]  [7]  ← Page 6     | Page 7
```

When folded and nested, pages appear in order: 1, 2, 3, 4... 12 ✓

---

## 🔢 PAGE SEQUENCE FOR PRINTING

### For 12-Page Booklet (like Adriana's):

**Print these 6 sheets double-sided:**

| Sheet | Front Side | Back Side |
|-------|------------|-----------|
| **1** | [12] [1]   | [2] [11]  |
| **2** | [10] [3]   | [4] [9]   |
| **3** | [8] [5]    | [6] [7]   |

### Assembly:
1. Print all 6 sheets double-sided
2. Stack in order: Sheet 1 on top, Sheet 3 at bottom
3. Fold entire stack in half
4. Staple along the fold (spine)
5. Pages now read 1→2→3... →12 correctly ✓

---

## 🎨 CANVA WORKFLOW

### Current Problem:
- Canva exports A4 landscape with 2×A5 pages side-by-side
- Pages are in **reading order** (1, 2, 3, 4...)
- Need to rearrange into **booklet order** (12-1, 2-11, 10-3...)

### Solution Options:

#### **Option A: Rearrange in Canva (RECOMMENDED)**

1. **Duplicate your Canva design**
2. **Create new page order for printing:**
   - Delete all pages
   - Re-add pages in this exact order:
     - Page with [12, 1] content
     - Page with [2, 11] content
     - Page with [10, 3] content
     - Page with [4, 9] content
     - Page with [8, 5] content
     - Page with [6, 7] content
3. **Export as PDF** → Ready to print!

#### **Option B: Use PDF Tool to Rearrange**

1. Export Canva PDF (6 pages in reading order)
2. Use PDF tool to reorder pages:
   - `pdftk` (Linux): `pdftk input.pdf cat 6 1 2 5 4 3 output booklet.pdf`
   - Online: [PDF Candy](https://pdfcandy.com/reorder-pdf-pages.html)
   - Adobe Acrobat: Organize Pages tool

#### **Option C: Split & Reassemble**

1. Export Canva PDF
2. Split each A4 landscape into 2×A5 portrait pages
3. Rearrange A5 pages into booklet order
4. Reassemble into final PDF

---

## 📐 PAGE NUMBERING ZONES

### Where to Place Page Numbers:

For saddle-stitch booklets, page numbers should be in the **outer bottom corners**:

```
┌─────────────┬─────────────┐
│             │             │
│    LEFT     │    RIGHT    │
│             │             │
│  [Page #]   │        [#]  │  ← Page numbers here
└─────────────┴─────────────┘
```

### Numbering Strategy:

**Option 1: Number All Pages (1-12)**
- Pro: Clear reference
- Con: Back cover shows "12" (looks odd)

**Option 2: Number Content Only (Skip 1 & 12)**
- Pro: Clean cover/back
- Con: Pages 2-11 numbered

**Option 3: No Numbers (RECOMMENDED for character booklets)**
- Pro: Clean aesthetic
- Con: No page reference (fine for 12-page booklets)

### Safe Zone for Numbers:
- **Gutter (center fold):** Avoid 10mm from center
- **Outer edge:** 5-8mm from edge
- **Bottom:** 8-10mm from bottom edge

---

## 🔄 WHITE/DECORATIVE PAGES

### Current White Pages in Adriana's Booklet:
Based on text extraction, **none identified** (all pages have content).

### If You Have White Decorative Pages:

**Common placements:**
- Page 1: Cover (usually decorative with title/name)
- Page 2: Often decorative/blank or title page
- Page 12: Back cover (often decorative/blank)

**Strategy:**
1. Identify which A5 pages are decorative (count words/content)
2. Keep them in sequence as designed
3. Use them strategically:
   - Page 1: Front cover
   - Page 2: Title page or blank
   - Pages 11-12: Credits or back matter

---

## 🛠️ STEP-BY-STEP: ADRIANA'S BOOKLET

### Step 1: Analyze Current Canva Design

Current A4 landscape pages (left|right when split):
1. Cover/Title | Identity start
2. Identity cont. | Relationships
3. Personality | Mannerisms
4. Secrets 1-2 | Secrets 3-4
5. Goals | How to Play
6. How to Play | Back

### Step 2: Calculate Booklet Order

For 12 pages → 6 sheets:
- Sheet 1: Pages 12, 1, 2, 11
- Sheet 2: Pages 10, 3, 4, 9
- Sheet 3: Pages 8, 5, 6, 7

### Step 3: Identify Page Mappings

| Final Booklet Page | Current Canva Location |
|--------------------|------------------------|
| Page 1 (Cover)     | A4 pg 1, left side     |
| Page 2 (Identity)  | A4 pg 1, right side    |
| Page 3 (Relation)  | A4 pg 2, left side     |
| Page 4 (Relation)  | A4 pg 2, right side    |
| Page 5 (Personal)  | A4 pg 3, left side     |
| Page 6 (Manner)    | A4 pg 3, right side    |
| Page 7 (Secrets)   | A4 pg 4, left side     |
| Page 8 (Secrets)   | A4 pg 4, right side    |
| Page 9 (Goals)     | A4 pg 5, left side     |
| Page 10 (How to)   | A4 pg 5, right side    |
| Page 11 (How to)   | A4 pg 6, left side     |
| Page 12 (Back)     | A4 pg 6, right side    |

### Step 4: Create Booklet Order in Canva

**New A4 landscape page sequence for printing:**

1. **New Canva Page 1:** [Page 12 content] [Page 1 content]
2. **New Canva Page 2:** [Page 2 content] [Page 11 content]
3. **New Canva Page 3:** [Page 10 content] [Page 3 content]
4. **New Canva Page 4:** [Page 4 content] [Page 9 content]
5. **New Canva Page 5:** [Page 8 content] [Page 5 content]
6. **New Canva Page 6:** [Page 6 content] [Page 7 content]

### Step 5: Add Page Numbers (Optional)

If numbering, place in outer bottom corners:
- Left pages: Number bottom-left
- Right pages: Number bottom-right
- Skip covers if desired

---

## 📋 REUSABLE WORKFLOW FOR ALL 11 CHARACTERS

### Universal Formula:

For any N-page booklet (where N ÷ 4 = 0):

```python
def calculate_booklet_order(total_pages):
    sheets = total_pages // 2
    order = []
    
    for sheet in range(sheets):
        # Front of sheet
        left_front = total_pages - sheet
        right_front = sheet + 1
        
        # Back of sheet
        left_back = sheet + 2
        right_back = total_pages - sheet - 1
        
        order.append({
            'sheet': sheet + 1,
            'front': [left_front, right_front],
            'back': [left_back, right_back]
        })
    
    return order
```

### Quick Reference:

| Total Pages | Sheets | Booklet Compatible? |
|-------------|--------|---------------------|
| 4           | 2      | ✅ Yes              |
| 8           | 4      | ✅ Yes              |
| 12          | 6      | ✅ Yes (Adriana)    |
| 16          | 8      | ✅ Yes              |
| 20          | 10     | ✅ Yes              |

### If Pages Don't Divide by 4:

**Example: 10 pages**
- 10 ÷ 4 = 2.5 ❌
- Add 2 blank pages → 12 pages ✅
- Place blanks at end (pages 11-12) or strategically

---

## 🎯 ACTION PLAN FOR EACH CHARACTER

### Checklist Per Character:

- [ ] **Export current Canva design** (save original)
- [ ] **Count total A4 pages** (multiply by 2 for A5 count)
- [ ] **Check divisibility by 4** (add blanks if needed)
- [ ] **Identify white/decorative pages**
- [ ] **Calculate booklet order** (use formula above)
- [ ] **Create new Canva file:** "Character_BOOKLET"
- [ ] **Rearrange pages in booklet order**
- [ ] **Add page numbers** (if desired)
- [ ] **Export final PDF:** "Character_BOOKLET_PRINT.pdf"
- [ ] **Test print 1 copy** (check fold alignment)
- [ ] **Print final** (11 copies for all players)

---

## 🖨️ PRINTING TIPS

### Home Printer Settings:
- **Paper:** A4 (297×210mm)
- **Orientation:** Landscape
- **Print:** Double-sided (flip on short edge)
- **Quality:** High/Best (300 DPI minimum)
- **Color:** Full color or B&W as designed

### Professional Printing:
- Provide PDF: "Character_BOOKLET_PRINT.pdf"
- Specify: "Saddle-stitch booklet, A5 final size"
- Paper: 120-160gsm recommended
- Finish: Matte or glossy as preferred

### Test Print Checklist:
- [ ] Pages in correct order when folded
- [ ] Text not cut off at fold
- [ ] Images align properly
- [ ] Colors print correctly
- [ ] No printer marks/artifacts

---

## 🚨 TROUBLESHOOTING

### Problem: Pages Out of Order
**Solution:** Recheck booklet formula, ensure front/back sides correct

### Problem: Text Cut at Spine
**Solution:** Add 10mm gutter margin in Canva design

### Problem: Not Divisible by 4
**Solution:** Add blank decorative pages at end

### Problem: Cover on Wrong Side
**Solution:** Ensure Page 1 is on RIGHT side of first sheet

---

## 📊 FILIPP'S BOOKLET COMPARISON

From previous work:
- **Filipp:** 6 A4 landscape pages → 12 A5 pages ✓ Perfect
- **Adriana:** 6 A4 landscape pages → 12 A5 pages ✓ Perfect

Both use identical booklet structure! Template is reusable ✅

---

## ✅ QUICK START: 3 STEPS

### For Adriana (or any 12-page booklet):

1. **Open Canva** → Duplicate design → Rename "Adriana_BOOKLET"

2. **Rearrange pages:**
   - Page 1: Back cover | Front cover
   - Page 2: Page 2 content | Page 11 content
   - Page 3: Page 10 content | Page 3 content
   - Page 4: Page 4 content | Page 9 content
   - Page 5: Page 8 content | Page 5 content
   - Page 6: Page 6 content | Page 7 content

3. **Export PDF** → Print double-sided → Fold → Staple → Done! 🎉

---

## 📁 FILE ORGANIZATION

### Save Structure:

```
09_DESIGN_ASSETS/character_booklets/
├── 06_Maria_Fletcher/
│   ├── Maria_Fletcher_ORIGINAL.pdf (reading order)
│   ├── Maria_Fletcher_BOOKLET.pdf (print order)
│   ├── Maria_Fletcher_Booklet_PRINT.pdf (final)
│   └── canva_link.txt
├── 08_Filipp_Moretti/
│   └── (same structure)
└── (repeat for all 11 characters)
```

---

## 🎓 LEARNING RESOURCES

### Understanding Booklet Imposition:
- [Booklet Imposition Explained](https://www.printindustry.com/booklet-printing.htm)
- [Saddle-Stitch vs Perfect Bound](https://www.vistaprint.com/hub/booklet-binding)

### PDF Tools:
- **pdftk:** Command-line PDF manipulation
- **PDF Candy:** Online PDF editor
- **Adobe Acrobat:** Professional PDF tool

---

**REMEMBER:** Always test print ONE booklet before printing all 11 copies! 🖨️✅

---

*Created for Mystery Crime Party - Christmas Murder Dinner 1926*  
*Streamline booklet creation for all character dossiers*
