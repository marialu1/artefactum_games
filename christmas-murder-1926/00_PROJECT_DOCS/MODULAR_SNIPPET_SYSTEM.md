# Modular Snippet Architecture - Character Dossiers

**Created:** October 8, 2025  
**Purpose:** Atomic, version-controlled, reusable character content management  
**Status:** ✅ Implemented for Filipp Moretti (proof-of-concept)

---

## 🎯 Overview

Breaking each character into **atomic snippet files** for maximum flexibility, maintainability, and version control.

**Instead of:** One large `notes.md` file per character  
**We have:** 12 modular snippet files + 1 configuration file

---

## 📦 Snippet Structure (Per Character)

```
02_CHARACTERS/character_name/
├── notes.md                    # Original master reference (unchanged)
├── snippets/                   # ⭐ NEW: Modular content pieces
│   ├── 00_metadata.yaml        # Character metadata & build config
│   ├── 02_identity.md          # Name, age, profession, connection
│   ├── 03_relationships.md     # All character relationships
│   ├── 04_personality.md       # Traits, mannerisms, phrases
│   ├── 05_goals.md             # Objectives for the game
│   ├── 06_did_you_kill.md      # Innocence/guilt statement
│   ├── 07_public_secret.md     # Can reveal freely
│   ├── 08_private_secret_1.md  # First hidden secret
│   ├── 09_private_secret_2.md  # Second hidden secret
│   ├── 10_private_secret_3.md  # Third hidden secret
│   ├── 11_how_to_play.md       # Gameplay tips
│   └── README.md               # Snippet documentation
└── covers/                     # Cover images from Canva
    ├── front_cover.png
    └── back_cover.png
```

---

## 🔧 How It Works

### 1. Configuration (00_metadata.yaml)

Controls everything without touching content:

```yaml
character:
  name: "Filipp Antonio Moretti"
  slug: "filipp_moretti"
  age: 38
  player: "TBD"
  
booklet:
  page_count: 12  # A5 pages
  
layout:
  sections:        # ⭐ Reorder here to change page sequence
    - identity
    - relationships
    - personality
    - public_secret
    - private_secrets
    - goals
    - did_you_kill
    - how_to_play
  
  omit_sections: []  # Skip sections per character
  
print:
  format: "saddle_stitch"
  paper: "A5_portrait"
  margins: "15mm"
  gutter: "10mm"
```

### 2. Content Snippets

Each snippet is **standalone and atomic**:

**02_identity.md:**
```markdown
# Identity

**Full Name**  
Filipp Antonio Moretti

**Age**  
38

**Profession**  
Empresário nocturno...
```

**03_relationships.md:**
```markdown
# Your Relationships

## REGINALD ASHFORD (Vítima/Ladrão)
**Relação:** Cliente regular. ÓDIO...
```

### 3. Assembly

**Manual (current):**
1. Read snippets in order from metadata.yaml
2. Copy to Canva or document
3. Add Canva covers (pages 1-2)
4. Export final PDF

**Automated (future):**
```bash
python build_character_booklet.py filipp_moretti
```
- Reads metadata.yaml
- Loads snippets in configured order
- Combines content
- Adds covers
- Generates PDF with saddle-stitch ordering

---

## ✨ Benefits

### 1. Atomic Edits
Change one section without touching others:
```bash
# Only edit relationships
vim 03_relationships.md

# Rest of character unchanged
```

### 2. Version Control Heaven
```bash
# See what changed in personality
git diff 04_personality.md

# Revert just secrets section
git checkout HEAD~1 -- 08_private_secret_1.md

# Compare across branches
git diff main..playtest-v2 03_relationships.md
```

### 3. Reorder Sections Easily
Just change YAML config:
```yaml
layout:
  sections:
    - identity
    - public_secret      # ← Moved up
    - private_secrets    # ← Moved up
    - relationships      # ← Moved down
    - personality
    - goals
```
No content files touched!

### 4. Character-Specific Customization
```yaml
# James needs extra sections
layout:
  sections:
    - identity
    - relationships
    - financial_crimes    # ← Extra section
    - personality
    - confession_details  # ← Another extra
    - goals
```

Add `12_financial_crimes.md` and `13_confession_details.md` to his snippets.

### 5. Collaboration-Friendly
**Scenario:** You edit James, friend edits Maria.

**Without snippets:** Merge conflicts in huge files.

**With snippets:** 
```
You edit:    james/snippets/05_goals.md
Friend edits: maria/snippets/03_relationships.md
Git merge:   ✅ PERFECT (no conflicts)
```

### 6. Template Reuse
Create templates in `_SNIPPET_TEMPLATES/`:
```bash
# New character? Copy templates
cp _SNIPPET_TEMPLATES/*.md new_character/snippets/

# Fill in blanks - much faster!
```

### 7. Multi-Language Support
```
snippets/
├── 02_identity_PT.md
├── 02_identity_EN.md
├── 03_relationships_PT.md
├── 03_relationships_EN.md
```

In metadata.yaml:
```yaml
language: "PT"  # or "EN"
```

### 8. A/B Testing Variants
```
snippets/
├── 04_personality.md              # Default
├── 04_personality_AGGRESSIVE.md   # Alt version
└── 04_personality_TIMID.md        # Alt version
```

Swap in metadata:
```yaml
sections:
  - personality_AGGRESSIVE  # ← Test this version
```

---

## 📋 Snippet Standards

### File Naming
- **Prefix with number** (forces alphabetical order)
- **Use snake_case:** `03_relationships.md` (not `03-Relationships.md`)
- **Consistent gaps:** 00, 02, 03... (allows future insertions)

### Content Format
- **Markdown headers:** `# Section Title`
- **Consistent lists:** `**🔴 Name (Role):** Description`
- **No inline LaTeX** (keep portable)
- **Comments for build:** `<!-- LaTeX: insert decorative border -->`

### Length Guidelines
- **Short (< 200 words):** identity, did_you_kill, public_secret
- **Medium (200-500 words):** personality, goals
- **Long (500-1000 words):** relationships, private_secrets, how_to_play

---

## 🚀 Implementation Status

### ✅ Completed

**Filipp Moretti (Proof-of-Concept):**
- [x] All 12 snippets created
- [x] Metadata.yaml configured
- [x] README documentation
- [x] Date corrections applied (Dec 21 fix)
- [x] Ready for assembly

**File count:** 13 files (12 snippets + 1 README)  
**Location:** `02_CHARACTERS/08_Filipp_Moretti_Entrepreneur/snippets/`

### 🔄 Next Steps

**Phase 1: Templates**
- [ ] Copy Filipp's snippets to `_SNIPPET_TEMPLATES/`
- [ ] Create generic placeholder text
- [ ] Add detailed comments explaining each section

**Phase 2: Second Character (Maria Fletcher)**
- [ ] Create `06_Maria_Fletcher_Journalist/snippets/` folder
- [ ] Copy templates
- [ ] Fill in from existing analysis
- [ ] Test assembly process

**Phase 3: Remaining Characters**
- [ ] Convert all 11 characters to snippet format
- [ ] Ensure consistency across all
- [ ] Review and refine

**Phase 4: Automation**
- [ ] Python assembly script
- [ ] LaTeX template integration
- [ ] Saddle-stitch page ordering
- [ ] Batch build all 11 booklets

---

## 🔨 Assembly Workflow

### Manual Assembly (Current)

1. **Review snippets:** Check all files in order
2. **Open metadata.yaml:** See section order
3. **Assemble content:**
   - Identity
   - Relationships
   - Personality
   - Public Secret
   - Private Secrets (combine 08, 09, 10)
   - Goals
   - Did You Kill
   - How to Play
4. **Add to Canva:** Pages 3-12 (covers are pages 1-2)
5. **Export PDF:** Use saddle-stitch ordering

### Semi-Automated (Future)

```bash
# Assemble one character
python build_character_booklet.py filipp_moretti

# Assemble all characters
python build_all_booklets.py

# With options
python build_character_booklet.py james_harrods --language EN --variant AGGRESSIVE
```

---

## 📊 Comparison

### Before (Monolithic)
```
02_CHARACTERS/filipp_moretti/
└── notes.md  (1 huge file, ~5000 words)
```

**Problems:**
- Change one thing → entire file edited
- Version control shows whole file as changed
- Merge conflicts likely
- Hard to reorder sections
- No variants possible

### After (Modular)
```
02_CHARACTERS/filipp_moretti/
├── notes.md  (original, unchanged)
└── snippets/
    ├── 00_metadata.yaml
    ├── 02_identity.md        (~100 words)
    ├── 03_relationships.md   (~800 words)
    ├── 04_personality.md     (~300 words)
    ├── 05_goals.md           (~100 words)
    ├── 06_did_you_kill.md    (~100 words)
    ├── 07_public_secret.md   (~80 words)
    ├── 08_private_secret_1.md (~200 words)
    ├── 09_private_secret_2.md (~200 words)
    ├── 10_private_secret_3.md (~250 words)
    └── 11_how_to_play.md     (~1500 words)
```

**Benefits:**
- ✅ Atomic edits per section
- ✅ Granular version control
- ✅ No merge conflicts
- ✅ Easy section reordering
- ✅ Variants possible
- ✅ Multi-language ready
- ✅ Template reuse

---

## 🎨 Integration with Canva

### Current Workflow

**Canva provides:**
- Page 1: Front cover (character photo, decorative frame)
- Page 2: Title page or decorative

**Snippets provide:**
- Pages 3-12: All character content

**Assembly:**
1. Export Canva pages 1-2 as PNG
2. Assemble content from snippets
3. Combine into single PDF
4. Apply saddle-stitch page ordering (BOOKLET_LAYOUT_WORKFLOW.md)

### Future Automation

**Python script:**
1. Load Canva cover PNGs from `covers/` folder
2. Read metadata.yaml configuration
3. Load snippets in specified order
4. Generate LaTeX with covers + content
5. Compile to PDF
6. Apply saddle-stitch reordering
7. Output final print-ready booklet

---

## 📝 Template Creation Guide

### Step 1: Create Template Folder
```bash
mkdir -p 02_CHARACTERS/_SNIPPET_TEMPLATES
```

### Step 2: Copy Filipp's Snippets
```bash
cp 02_CHARACTERS/08_Filipp_Moretti_Entrepreneur/snippets/*.md \
   02_CHARACTERS/_SNIPPET_TEMPLATES/
```

### Step 3: Genericize Content
Replace Filipp-specific content with placeholders:

**Before:**
```markdown
**Full Name**  
Filipp Antonio Moretti
```

**After:**
```markdown
**Full Name**  
[CHARACTER FULL NAME]

<!-- Example: Filipp Antonio Moretti -->
```

### Step 4: Add Guidance Comments
```markdown
# Identity

**Full Name**  
[CHARACTER FULL NAME]
<!-- Use full formal name, including middle name if applicable -->

**Age**  
[AGE]
<!-- Actual age at time of game (Dec 24, 1926) -->

**Profession**  
[PROFESSION/TITLE]
<!-- Their job, social role, or defining characteristic -->
- [DETAIL 1]
- [DETAIL 2]
<!-- Add 2-3 specific details about their profession -->
```

---

## 🔄 Snippet Update Workflow

### When Updating a Character

1. **Identify section to change**
   ```bash
   # Want to add a relationship?
   vim 02_CHARACTERS/filipp_moretti/snippets/03_relationships.md
   ```

2. **Edit only that file**
   ```markdown
   # Add new relationship
   ## NEW CHARACTER (Role)
   **Relação:** Description...
   ```

3. **Commit with clear message**
   ```bash
   git add 02_CHARACTERS/filipp_moretti/snippets/03_relationships.md
   git commit -m "Add Filipp's relationship with [new character]"
   ```

4. **Rebuild booklet**
   - Manual: Copy updated content
   - Automated: Re-run build script

### When Reordering Sections

1. **Edit metadata.yaml only**
   ```yaml
   layout:
     sections:
       - identity
       - goals           # ← Moved up
       - relationships   # ← Moved down
       - personality
   ```

2. **Rebuild** - Content files unchanged!

### When Creating Variants

1. **Duplicate snippet**
   ```bash
   cp 04_personality.md 04_personality_VARIANT.md
   ```

2. **Edit variant**
   ```markdown
   # Make character more aggressive/timid/etc
   ```

3. **Switch in metadata**
   ```yaml
   sections:
     - personality_VARIANT
   ```

---

## 📚 Resources

### Documentation
- **This file:** Complete system overview
- **Per-character README:** In each `snippets/` folder
- **BOOKLET_LAYOUT_WORKFLOW.md:** Saddle-stitch printing guide
- **CANVA_EXPORT_GUIDE.md:** Canva integration workflow

### Examples
- **Filipp Moretti:** Complete implementation
- **Templates:** In `_SNIPPET_TEMPLATES/` (to be created)

### Tools
- **build_character_booklet.py:** Assembly script (to be created)
- **Makefile:** Build commands (can add snippet tasks)

---

## 🎯 Success Criteria

**A successful snippet system will:**

- ✅ Allow editing one section without touching others
- ✅ Enable easy version control and change tracking
- ✅ Support character-specific customization
- ✅ Permit section reordering without content changes
- ✅ Facilitate collaboration (no merge conflicts)
- ✅ Enable template reuse for all 11 characters
- ✅ Support variants and A/B testing
- ✅ Integrate smoothly with Canva covers
- ✅ Produce print-ready booklets efficiently

**All criteria met for Filipp Moretti! ✅**

---

## 🔮 Future Enhancements

### Potential Features

1. **Automated cross-referencing**
   - Script validates relationship consistency
   - Ensures reciprocal relationships exist
   - Checks for contradictions

2. **Multi-format export**
   - PDF for printing
   - HTML for web viewing
   - EPUB for e-readers
   - Plain text for reference

3. **Character comparison**
   - Diff tool shows relationship overlaps
   - Highlights contradictions
   - Suggests fixes

4. **Batch operations**
   - Update all characters' metadata at once
   - Apply global style changes
   - Regenerate all booklets

5. **Template evolution**
   - Track template versions
   - Migrate existing characters to new templates
   - Maintain backwards compatibility

---

## 📞 Quick Reference

### File Locations
- **Filipp's snippets:** `02_CHARACTERS/08_Filipp_Moretti_Entrepreneur/snippets/`
- **Templates (future):** `02_CHARACTERS/_SNIPPET_TEMPLATES/`
- **This documentation:** `00_PROJECT_DOCS/MODULAR_SNIPPET_SYSTEM.md`

### Key Commands
```bash
# Create new character snippets
cp -r _SNIPPET_TEMPLATES/ new_character/snippets/

# Edit a section
vim character/snippets/03_relationships.md

# Check what changed
git diff character/snippets/

# Build booklet (future)
python build_character_booklet.py character_slug
```

---

**The modular snippet system makes character booklet creation flexible, maintainable, version-controlled, and collaboration-friendly!** 🎉

---

*Created for Mystery Crime Party - Christmas Murder Dinner 1926*  
*Streamlining character dossier creation for all 11 characters*
