# 📋 Quick Sheet System - Complete Guide

**Created:** October 8, 2025  
**Status:** ✅ FULLY OPERATIONAL  
**Purpose:** Streamlined 6-page A5 character reference sheets for table use

---

## 🎯 What is the Quick Sheet System?

The Quick Sheet is a **concise, table-friendly character reference** (5-6 pages A5) designed for quick consultation during gameplay. It complements the detailed full dossier (21 pages) by providing only essential information.

### 📊 Comparison

| Feature | **Quick Sheet** | **Full Dossier** |
|---------|----------------|------------------|
| **Pages** | 6 pages | 21 pages |
| **Size** | ~70KB | ~155KB |
| **Use Case** | At-table reference | Pre-game study |
| **Content** | Essential only | Complete details |
| **Secrets** | Excluded | All included |
| **How to Play** | 5 tips | 15+ sections |

---

## 📁 File Structure

```
02_CHARACTERS/08_Filipp_Moretti_Entrepreneur/
├── snippets/                          # ← Streamlined Quick Sheet content
│   ├── 02_identity.md                # 4 lines
│   ├── 03_relationships.md           # 5 key relationships
│   ├── 04_personality.md             # Personality + mannerisms + phrases
│   ├── 05_goals.md                   # 3 bullet points
│   ├── 06_did_you_kill.md           # 2-3 sentences
│   └── 11_how_to_play.md            # 5 actionable tips
│
├── snippets_detailed_backup/         # ← Original Portuguese versions
│   └── [all original .md files]
│
├── 08_Filipp_Moretti_Entrepreneur_QUICK.tex     # LaTeX template
├── 08_Filipp_Moretti_Entrepreneur_QUICK.pdf     # ✅ Output (69KB, 6 pages)
│
└── 08_Filipp_Moretti_Entrepreneur.pdf           # Full dossier (155KB, 21 pages)
```

---

## 📄 Quick Sheet Page Layout

### **Page 1: Cover**
- Character name: "Filipp Moretti"
- Subtitle: "The Silver Fox"
- Location: "Greenwich Village, Manhattan"
- CONFIDENTIAL stamp (red, centered)

### **Page 2: Identity**
- Name, Age, Profession
- Connection to Host
- Gold divider at bottom

### **Page 3: Goals & Secret**
- **Your Goals Tonight** (3 bullets)
- Ornamental divider
- **Did You Kill Him?** (2-3 sentences)
- Gold divider at bottom

### **Page 4: Relationships**
- **Your Key Relationships**
- 5 relationships with emoji indicators:
  - 🟢 Ally
  - 🟡 Neutral/Complex
  - 🔴 Enemy
  - 🔵 Cautious
- Gold divider at bottom

### **Page 5: Personality & Performance**
- **Personality:** 3 bullet points
- **Mannerisms:** 3 bullet points
- **Signature Phrases:** 4 quotes
- Tiny divider
- **How to Play:** 5 numbered tips
- Gold divider at bottom

### **Page 6: Back Cover**
- Decorative text:
  - "The Gatsby Rose Manor"
  - "Christmas Eve, 1926"

---

## 🛠️ How to Build Quick Sheets

### **Method 1: Direct LaTeX Compilation (Current)**

```bash
cd 02_CHARACTERS/08_Filipp_Moretti_Entrepreneur
pdflatex -interaction=nonstopmode 08_Filipp_Moretti_Entrepreneur_QUICK.tex
rm -f *.aux *.log *.out  # Clean up
```

**Output:** `08_Filipp_Moretti_Entrepreneur_QUICK.pdf`

### **Method 2: Using Makefile (Future)**

```bash
# Add to Makefile
quick-sheet:
	cd 02_CHARACTERS/$(CHAR_DIR) && \
	pdflatex -interaction=nonstopmode $(CHAR_DIR)_QUICK.tex && \
	rm -f *.aux *.log *.out
```

---

## 🎨 Design Features

### **Colors**
- **Vintage Black:** RGB(26,26,26) - Main text
- **Vintage Brown:** RGB(112,66,20) - Section headers
- **Gold:** RGB(212,175,55) - Ornamental dividers
- **Cream:** RGB(255,253,245) - Background (future)

### **Typography**
- **Body:** Latin Modern Roman (10pt)
- **Headers:** Sans-serif bold (Large)
- **Emphasis:** Bold for names/labels

### **Ornaments**
Currently using placeholder text dividers:
```
--- * * * ---
```

**Future:** User will export PNG ornaments from Canva to `09_DESIGN_ASSETS/ornaments/`:
- `divider_small.png` (20-30mm wide)
- `divider_medium.png` (40-50mm wide)
- `divider_tiny.png` (15-20mm wide)
- `page_number_frame.png` (15×8mm)

---

## 📝 Creating Quick Sheets for Other Characters

### **Step 1: Create Snippets Folder**

```bash
mkdir -p 02_CHARACTERS/[CHARACTER_DIR]/snippets
```

### **Step 2: Create Streamlined Snippets**

Use Filipp's snippets as templates:

**02_identity.md** (4 lines):
```markdown
# Identity

**Name:** [Full Name]  
**Age:** [Age] years  
**Profession:** [Profession]  
**Connection to Host:** [Brief connection]
```

**03_relationships.md** (5 key relationships):
```markdown
# Your Key Relationships

🟢 **[NAME]** - [One sentence description]

🟡 **[NAME]** - [One sentence description]

🔴 **[NAME]** - [One sentence description]

🔵 **[NAME]** - [One sentence description]

🟡 **[NAME]** - [One sentence description]
```

**05_goals.md** (3 bullets):
```markdown
# Your Goals Tonight

• [Goal 1]
• [Goal 2]
• [Goal 3]
```

**06_did_you_kill.md** (2-3 sentences):
```markdown
# Did You Kill Him?

[Yes/No statement]

[Brief explanation of culpability/involvement]
```

**04_personality.md** (structured):
```markdown
# Personality & Performance

**Personality:**
• [Trait 1]
• [Trait 2]
• [Trait 3]

**Mannerisms:**
• [Mannerism 1]
• [Mannerism 2]
• [Mannerism 3]

**Signature Phrases:**
• "[Quote 1]"
• "[Quote 2]"
• "[Quote 3]"
• "[Quote 4]"
```

**11_how_to_play.md** (5 tips):
```markdown
# How to Play

1. **[Tip 1 title]** - [Brief explanation]

2. **[Tip 2 title]** - [Brief explanation]

3. **[Tip 3 title]** - [Brief explanation]

4. **[Tip 4 title]** - [Brief explanation]

5. **[Tip 5 title]** - [Brief explanation]
```

### **Step 3: Copy & Customize LaTeX Template**

```bash
cp 02_CHARACTERS/08_Filipp_Moretti_Entrepreneur/08_Filipp_Moretti_Entrepreneur_QUICK.tex \
   02_CHARACTERS/[CHARACTER_DIR]/[CHARACTER_DIR]_QUICK.tex
```

**Edit the following in the .tex file:**
- Cover page: Character name, subtitle, location
- All content pulled from snippets

### **Step 4: Compile**

```bash
cd 02_CHARACTERS/[CHARACTER_DIR]
pdflatex -interaction=nonstopmode [CHARACTER_DIR]_QUICK.tex
rm -f *.aux *.log *.out
```

---

## ✅ Success Criteria

A complete Quick Sheet should:

- [ ] Be exactly **6 pages A5 portrait**
- [ ] Size: **~70KB** (without ornaments)
- [ ] Contain **only essential information**
- [ ] **Exclude** all detailed secrets (those go in full dossier)
- [ ] Have **clear hierarchy** (sections, bullets, emphasis)
- [ ] Use **emoji indicators** for relationships
- [ ] Include **5 actionable performance tips**
- [ ] **Compile without errors** in pdfLaTeX

---

## 🚀 Batch Production Workflow

### **For All 11 Characters:**

```bash
# 1. Create script: scripts/build_all_quick_sheets.sh
#!/bin/bash

CHARACTERS=(
    "01_JC_Mendes_Detective"
    "02_Helena_Ashford_Hostess"
    "03_James_Harrods_Banker"
    "04_Emilia_Harrods_Spiritualist"
    "05_Daisy_Valmont_Diva"
    "06_Maria_Fletcher_Journalist"
    "07_Padre_Rui_Santos"
    "08_Filipp_Moretti_Entrepreneur"
    "09_Claire_Beaumont_Daughter"
    "10_Denise_Beaumont_Daughter"
    "11_Ricardo_Victim_Assistant"
)

for CHAR in "${CHARACTERS[@]}"; do
    echo "Building Quick Sheet: $CHAR"
    cd "02_CHARACTERS/$CHAR"
    
    if [ -f "${CHAR}_QUICK.tex" ]; then
        pdflatex -interaction=nonstopmode "${CHAR}_QUICK.tex" > /dev/null 2>&1
        rm -f *.aux *.log *.out
        echo "  ✅ ${CHAR}_QUICK.pdf"
    else
        echo "  ⚠️  Template not found"
    fi
    
    cd - > /dev/null
done

echo "✅ All Quick Sheets built!"
```

```bash
chmod +x scripts/build_all_quick_sheets.sh
./scripts/build_all_quick_sheets.sh
```

---

## 📋 Content Guidelines

### **What to INCLUDE:**
✅ Essential identity (name, age, profession)  
✅ Connection to host  
✅ Top 5 relationships only  
✅ Core personality traits (3 max)  
✅ Key mannerisms (3 max)  
✅ Signature phrases (4 max)  
✅ Tonight's goals (3 max)  
✅ Murder involvement (yes/no + brief)  
✅ Performance tips (5 actionable)

### **What to EXCLUDE:**
❌ Detailed backstory  
❌ Minor relationships (save for full dossier)  
❌ All layered secrets (full dossier only)  
❌ Complex motivations  
❌ Tactical gameplay strategies  
❌ Deep psychological analysis  
❌ Contingency plans  
❌ Extensive dialogue examples

---

## 🎭 Player Experience

### **Before Game Night:**
1. Player receives **Full Dossier** (21 pages) 1 week before
2. Player studies character in depth
3. Player notes key secrets and goals

### **Game Night:**
1. Player brings **Quick Sheet** (6 pages) to table
2. Quick reference during gameplay
3. No fumbling through 21-page dossier
4. Easy to consult discreetly

### **Benefits:**
- 📖 Less clutter at table
- ⚡ Faster reference
- 🔒 Secrets stay private (not in Quick Sheet)
- 🎯 Focus on essentials
- 🎭 Better performance (tips always visible)

---

## 🔄 Maintenance & Updates

### **Updating Quick Sheet Content:**

1. Edit snippet files in `snippets/` folder
2. Recompile LaTeX:
   ```bash
   pdflatex -interaction=nonstopmode [CHARACTER]_QUICK.tex
   ```
3. PDF automatically updates

### **Preserving Detailed Content:**

Original detailed Portuguese versions are backed up in:
```
02_CHARACTERS/08_Filipp_Moretti_Entrepreneur/snippets_detailed_backup/
```

---

## 🎨 Future Enhancements

### **Phase 2: Canva Ornaments**
- [ ] User exports ornaments from Canva
- [ ] Place in `09_DESIGN_ASSETS/ornaments/`
- [ ] Update LaTeX `\divider` command to use PNG
- [ ] Rebuild all Quick Sheets

### **Phase 3: Advanced Fonts**
- [ ] Switch to LuaLaTeX for custom fonts
- [ ] Implement: Crimson Text, Great Vibes, Lato
- [ ] Match Maria Fletcher design aesthetic

### **Phase 4: Covers Integration**
- [ ] User exports cover designs from Canva
- [ ] Replace text-only covers with PNG
- [ ] Full visual integration

---

## 📊 Current Status

**Completed:**
- ✅ Streamlined snippet system
- ✅ LaTeX template (6-page A5)
- ✅ Successful PDF generation
- ✅ Clean, professional layout
- ✅ Emoji relationship indicators
- ✅ Placeholder ornaments (text-based)
- ✅ Complete documentation

**Next Steps:**
1. User exports Canva ornaments
2. Create Quick Sheets for remaining 10 characters
3. Batch build all 11 Quick Sheets
4. Print test and review
5. Iterate on design if needed

---

## 📞 Quick Reference

**Build Single Quick Sheet:**
```bash
cd 02_CHARACTERS/[CHARACTER_DIR]
pdflatex -interaction=nonstopmode [CHARACTER_DIR]_QUICK.tex
rm -f *.aux *.log *.out
```

**Check Output:**
```bash
ls -lh *_QUICK.pdf
```

**View PDF:**
```bash
xdg-open [CHARACTER_DIR]_QUICK.pdf
```

---

**System Created:** October 8, 2025  
**First Character:** Filipp Moretti ✅  
**Ready to Scale:** Yes! 🚀
