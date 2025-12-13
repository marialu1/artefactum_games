# Character Snippet Structure V2.0 - Official Standard

**Effective Date:** January 9, 2025  
**Status:** ACTIVE STANDARD for all character development

---

## Overview

This document defines the **NEW standardized snippet structure** for all character dossiers. This structure was developed through the Filipp Moretti quick sheet build process and is now being rolled out to all 11 characters.

---

## File Structure (Standard Order)

```
[CHARACTER_NAME]/snippets/
├── 00_metadata.yaml          # Character metadata
├── 01_cover.md               # Front cover content
├── 02_identity.md            # Identity & connection to host
├── 03_personality.md         # Personality & appearance
├── 04_public_secret.md       # Public information (can share freely)
├── 05_private_secrets.md     # ALL private secrets (COMBINED)
├── 06_goals_and_status.md    # Goals + innocent/guilty status (COMBINED)
├── 07_how_to_play.md         # Performance guide with tips
├── 08_relationships.md       # Relationship map
└── 09_back_cover.md          # Quick reference back cover
```

**Total:** 10 files (1 YAML + 9 Markdown)

---

## Key Changes from V1.0

### OLD STRUCTURE (V1.0)
❌ Separate files per secret (08, 09, 10)  
❌ Identity, personality, goals all separate  
❌ "Did you kill" as separate file  
❌ No cover/back cover pages  
❌ Inconsistent numbering  

### NEW STRUCTURE (V2.0)
✅ **Combined secrets** - All private secrets in ONE file (05)  
✅ **Combined goals + status** - Goals and innocent/guilty together (06)  
✅ **Added covers** - Front (01) and back (09) for booklet format  
✅ **Logical reading order** - Matches final quick sheet flow  
✅ **Clear sequential numbering** - 01-09, easy to follow  

---

## File Content Guidelines

### 00_metadata.yaml
```yaml
character_name: "Full Name"
player_name: "Player"
age: 42
role: "Their Role"
status: "INNOCENT" or "GUILTY"
archetype: "Character Archetype"
```

### 01_cover.md
- Character name (large)
- Archetype/tagline
- Location/date context
- "CONFIDENTIAL CHARACTER DOSSIER"
- Player name

### 02_identity.md
- Full name
- Age
- Profession (with details)
- Residence
- Connection to host (why invited)
- **Core conflict** (1-2 sentences about their main dilemma)

### 03_personality.md
- Who they are (traits)
- Appearance details
- Mannerisms (specific behaviors)
- Speech patterns (example phrases)
- Key trait (defining characteristic)

### 04_public_secret.md
- Information they CAN share freely from start
- Official reason for attending
- Public knowledge about them
- "You can mention this openly" guidance

### 05_private_secrets.md ⭐ **COMBINED**
- **Secret #1:** [Title/topic]
  - Full details
  - Why it matters
  
- **Secret #2:** [Title/topic]
  - Full details
  - Why it matters
  
- **Secret #3:** [Title/topic]
  - Full details
  - Why it matters
  
- Clear headers (##) for each secret
- "Reveal ONLY if..." guidance at top

### 06_goals_and_status.md ⭐ **COMBINED**

**Part 1: Goals**
- Numbered list of objectives
- What they want to achieve tonight
- Priority order

**Part 2: Status**
- INNOCENT or GUILTY declaration
- Explanation of their position
- Key dilemma or impossible situation

### 07_how_to_play.md
- Core strategy summary
- Key performance tips (numbered)
- Specific scenes/moments to watch for
- Physical gestures
- Speech examples
- Act-by-act strategy
- "Remember" section with quick bullets

### 08_relationships.md
- Emoji-coded relationships:
  - 🔴 Conflict/hostile
  - 🟡 Neutral/complicated  
  - 🟢 Ally/positive
  - 🔵 Special/unique
  
- Brief descriptions per character
- Emotional dynamics
- Key interactions

### 09_back_cover.md
- Quick reference summary
- Core dilemma (1-2 sentences)
- Key moment to watch for
- "Remember" bullet list
- Character name/title
- "For Player Eyes Only" notice

---

## Design Integration

These snippets feed into THREE outputs:

1. **Typst Quick Sheets**
   - Automated build via `build_quick_sheet_typst.py`
   - Uses snippets 01-09 in order
   
2. **Canva Booklets**
   - Manual copy-paste from snippets
   - Each snippet = one spread/page
   - Easy to update
   
3. **Full Dossier**
   - Combined view in `FULL_DOSSIER.md`
   - Reference for GM and content sync

---

## Implementation Status

### ✅ COMPLETED (V2.0 Structure)
- [x] **08_Filipp_Moretti** - Original/template
- [x] **07_Padre_Rui** - First conversion

### 🔄 TO BE CONVERTED (9 remaining)
- [ ] 01_JC_Mendes_Detective
- [ ] 02_Helena_Ashford_Hostess
- [ ] 03_James_Harrods_Banker
- [ ] 04_Emilia_Harrods_Spiritualist
- [ ] 05_Daisy_Valmont_Diva
- [ ] 06_Maria_Fletcher_Journalist
- [ ] 09_Claire_Beaumont_Daughter
- [ ] 10_Denise_Beaumont_Daughter
- [ ] 11_Ricardo_Victim_Assistant

---

## Migration Process

For each character:

1. **Backup old structure:**
   ```bash
   cd 02_CHARACTERS/[CHARACTER]/
   mv snippets snippets_old_structure
   mkdir snippets
   ```

2. **Create new files 00-09** following template

3. **Content mapping:**
   - Old 02_identity.md → New 02_identity.md (enhanced)
   - Old 04_personality.md → New 03_personality.md
   - Old 07_public_secret.md → New 04_public_secret.md
   - Old 08,09,10 → **COMBINE** into new 05_private_secrets.md
   - Old 05_goals.md + 06_did_you_kill.md → **COMBINE** into new 06_goals_and_status.md
   - Old 11_how_to_play.md → New 07_how_to_play.md (enhanced)
   - Old 03_relationships.md → New 08_relationships.md
   - **NEW:** 01_cover.md
   - **NEW:** 09_back_cover.md

4. **Update README.md** in snippets folder

5. **Test build** (if applicable)

---

## Content Writing Principles

### Player-Focused
- Write FOR the player, not about them
- Second person ("You are..." not "Character is...")
- Clear, actionable information

### Information Control
- Public secret = can share from start
- Private secrets = strategic reveals only
- No GM-only spoilers in player snippets

### Playability
- How to Play section = practical acting guide
- Specific phrases, gestures, moments
- Act-by-act strategy when relevant

### Brevity
- Snippets should be CONCISE
- Details in full dossier
- Quick reference friendly

---

## Quality Checklist

Before marking a character "complete":

- [ ] All 10 files present (00 YAML + 01-09 MD)
- [ ] Sequential numbering correct
- [ ] Secrets combined in file 05
- [ ] Goals + status combined in file 06
- [ ] Cover and back cover created
- [ ] README.md updated with V2.0 structure
- [ ] Old structure backed up
- [ ] Content reviewed for player-appropriateness
- [ ] Cross-referenced with FULL_DOSSIER for consistency

---

## Maintenance

### When Updating Content:

1. Update snippet file(s)
2. Update FULL_DOSSIER.md
3. Rebuild Typst if needed
4. Update Canva if needed
5. Note change in character notes.md

### Version Control:

- This is **Structure V2.0**
- Old structure preserved in `snippets_old_structure/`
- Structure version noted in snippet README.md

---

## Reference Examples

**Best Examples:**
- `02_CHARACTERS/08_Filipp_Moretti_Entrepreneur/snippets/` (original template)
- `02_CHARACTERS/07_Padre_Rui_Santos/snippets/` (first conversion)

Use these as templates when converting remaining characters.

---

**Document Owner:** Content Team  
**Last Updated:** January 9, 2025  
**Version:** 2.0 (ACTIVE STANDARD)
