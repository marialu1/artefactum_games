# Filipp Moretti - Modular Snippet System

**Character:** Filipp Antonio Moretti  
**Created:** October 8, 2025  
**Status:** ✅ Complete snippet breakdown from notes.md

---

## 📦 Snippet Files

| File | Section | Description |
|------|---------|-------------|
| `00_metadata.yaml` | Configuration | Build settings, page order, fonts, covers |
| `02_identity.md` | Identity | Name, age, profession, connection to host |
| `03_relationships.md` | Relationships | All character relationships with context |
| `04_personality.md` | Personality | Traits, mannerisms, signature phrases |
| `05_goals.md` | Goals Tonight | Character objectives for the game |
| `06_did_you_kill.md` | Guilt/Innocence | Clear statement of culpability |
| `07_public_secret.md` | Public Secret | Information that can be revealed freely |
| `08_private_secret_1.md` | Secret Layer 1 | Daisy as adoptive "daughter" (paternal love) |
| `09_private_secret_2.md` | Secret Layer 2 | Stolen recipe (motive for murder) |
| `10_private_secret_3.md` | Secret Layer 3 | Accidental accomplice (piano wire) |
| `11_how_to_play.md` | Performance Tips | Acting notes, Italian phrases, tactics |

---

## 🎯 Purpose

**Modular content management for character booklets:**
- ✅ **Atomic edits** - Change one section without touching others
- ✅ **Version control** - Track changes per snippet file
- ✅ **Reusable templates** - Same structure for all 11 characters
- ✅ **Flexible ordering** - Reorder sections in metadata.yaml
- ✅ **Manual review friendly** - Human judgment before assembly

---

## 🔧 How to Use

### Option 1: Manual Assembly (Recommended for now)
1. Review all snippet files
2. Copy content in order defined in `00_metadata.yaml`
3. Add to Canva pages 3-12 (pages 1-2 are existing covers)
4. Export as PDF

### Option 2: Python Assembly (For later automation)
```bash
python build_character_booklet.py filipp_moretti
```
This will:
- Read `00_metadata.yaml` configuration
- Load snippets in specified order
- Generate combined Markdown
- (Future) Convert to LaTeX → PDF

---

## 📋 Snippet Assembly Order

As defined in `00_metadata.yaml`:

1. **Identity** (02_identity.md)
2. **Relationships** (03_relationships.md)  
   ↓ *Page break*
3. **Personality** (04_personality.md)
4. **Public Secret** (07_public_secret.md)
5. **Private Secrets** (08, 09, 10 combined)  
   ↓ *Page break*
6. **Goals** (05_goals.md)
7. **Did You Kill Him?** (06_did_you_kill.md)
8. **How to Play** (11_how_to_play.md)  
   ↓ *Page break*

---

## ✏️ Editing Snippets

### To change a section:
1. Edit the specific snippet file (e.g., `03_relationships.md`)
2. Save changes
3. Rebuild booklet (manual or script)
4. No need to touch other files!

### To reorder sections:
1. Edit `00_metadata.yaml`
2. Change the `sections:` list order
3. Rebuild booklet
4. Content stays the same, only order changes!

### To add/remove sections:
1. Create new snippet (e.g., `12_additional_notes.md`)
2. Add to `sections:` list in metadata
3. OR add to `omit_sections:` to skip

---

## 🔄 Syncing with Canva

**Current workflow (manual):**
1. Extract pages 1-2 from existing Canva PDF (covers)
2. Assemble content from snippets for pages 3-12
3. Create new PDF with combined content
4. Use saddle-stitch page ordering (see BOOKLET_LAYOUT_WORKFLOW.md)

**Future workflow (semi-automated):**
1. Keep Canva covers as PNG files in `covers/` folder
2. Python script assembles content + covers → single PDF
3. Apply saddle-stitch reordering automatically
4. Export final print-ready booklet

---

## 📊 Benefits of This System

### For Version Control:
```bash
# See what changed in relationships
git diff 03_relationships.md

# Revert just the personality section
git checkout HEAD~1 -- 04_personality.md
```

### For Character Variants:
```
snippets/
├── 04_personality.md           # Default
├── 04_personality_TIMID.md     # Alternative version
└── 04_personality_AGGRESSIVE.md
```

Change in metadata.yaml:
```yaml
sections:
  - personality_AGGRESSIVE  # Use alternate version
```

### For Multi-Language:
```
snippets/
├── 02_identity_PT.md  # Portuguese
├── 02_identity_EN.md  # English
```

---

## 🚀 Next Steps

### For Filipp:
- [x] All snippets created
- [x] Metadata configured
- [ ] Extract Canva covers to `covers/` folder
- [ ] Test manual assembly
- [ ] Review assembled content
- [ ] Generate final PDF

### For Other Characters:
- [ ] Copy templates to each character folder
- [ ] Fill in character-specific content
- [ ] Adjust metadata.yaml per character
- [ ] Build all 11 booklets

---

## 📝 Notes

**Date Corrections Applied:**
- Piano wire date corrected to **Dec 21** (was Dec 23)
- Noted in `10_private_secret_3.md`

**Player Assignment:**
- Still **TBD** - update metadata.yaml when assigned

**Canva Integration:**
- Covers already exist in: `09_DESIGN_ASSETS/character_booklets/08_Filipp_Moretti/Filipp_Moretti_Booklet_PRINT.pdf`
- Pages 1-2: Use as-is
- Pages 3-12: Assemble from snippets

---

**This modular system makes character booklet creation flexible, maintainable, and collaboration-friendly!** ✅
