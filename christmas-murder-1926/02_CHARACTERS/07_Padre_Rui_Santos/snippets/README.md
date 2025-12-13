# Father Juan Carlos - Snippet System

**NEW STANDARDIZED STRUCTURE** (Updated: January 2025)

This folder contains modular content snippets for Father Juan Carlos, organized in the **NEW quick sheet order** that matches the final player booklet layout.

---

## File Structure

```
snippets/
├── 00_metadata.yaml          # Character metadata
├── 01_cover.md               # Front cover content
├── 02_identity.md            # Identity & connection
├── 03_personality.md         # Personality & appearance
├── 04_public_secret.md       # Public information
├── 05_private_secrets.md     # ALL private secrets (combined)
├── 06_goals_and_status.md    # Goals + innocent/guilty status
├── 07_how_to_play.md         # Performance guide
├── 08_relationships.md       # Relationship map
└── 09_back_cover.md          # Quick reference back
```

---

## Key Changes from Old Structure

### OLD STRUCTURE (Backed up in `snippets_old_structure/`)
- Separate files per secret (08, 09, 10)
- Identity, personality, goals all separate
- "Did you kill" as separate file
- No cover/back cover
- Different numbering

### NEW STRUCTURE (Current)
1. **Combined secrets** - All private secrets in one file (05)
2. **Combined goals + status** - Goals and innocent/guilty together (06)
3. **Added covers** - Front (01) and back (09) for booklet
4. **Logical order** - Matches final quick sheet reading flow
5. **Clearer numbering** - Sequential 01-09

---

## Design Integration

These snippets feed directly into:
- **Typst Quick Sheets** (via `build_quick_sheet_typst.py`)
- **Canva Booklets** (copy-paste from snippets)
- **Full Dossier** (combined view in `FULL_DOSSIER.md`)

---

## Content Guidelines

### 05_private_secrets.md
- **Combine all 3 secrets** in one file
- Clear headers (Secret #1, #2, #3)
- Use this for Canva layout (easier to manage as single section)

### 06_goals_and_status.md
- Goals first
- Status section (INNOCENT/GUILTY)
- Impossible position/dilemma description

### 07_how_to_play.md
- Performance tips
- Key phrases/mannerisms
- Act-by-act strategy
- Specific scene guidance

### 08_relationships.md
- Emoji-coded (🔴 conflict, 🟡 neutral, 🟢 ally, 🔵 special)
- Brief descriptions
- Emotional dynamics

---

## Standard Snippet Order (All Characters)

This order is now **STANDARD** across all characters:

1. **Cover** - Title page
2. **Identity** - Who you are, connection to host
3. **Personality** - Traits, appearance, mannerisms
4. **Public Secret** - What you can say freely
5. **Private Secrets** - What you hide (combined)
6. **Goals & Status** - What you want + innocent/guilty
7. **How to Play** - Acting guide
8. **Relationships** - Dynamics with others
9. **Back Cover** - Quick reference

---

## Usage

### For Typst Quick Sheets
```bash
python scripts/build_quick_sheet_typst.py --character padre_rui
```

### For Canva
1. Open snippet files 01-09
2. Copy content section by section
3. Paste into corresponding Canva pages
4. Format as needed

### For Full View
See `../FULL_DOSSIER.md` for complete combined version

---

## Maintenance

- ✅ Keep snippets SHORT and player-focused
- ✅ No GM-only information in snippets
- ✅ Cross-reference with FULL_DOSSIER for consistency
- ✅ Update both snippet + full dossier when content changes

---

**Last Updated:** January 9, 2025  
**Structure Version:** 2.0 (New Standard)
