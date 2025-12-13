# Filipp Moretti Character Snippets

## Snippet Structure V2 Standard

This directory contains **modular, reusable snippets** for Filipp Moretti Entrepreneur character materials.

---

## 📁 Files in This Directory

| File | Purpose | Content Summary |
|------|---------|-----------------|
| **00_metadata.yaml** | Character metadata | Name, age, occupation, player assignment |
| **01_cover.md** | Front cover content | Character portrait frame + title page |
| **02_identity.md** | Who you are | Name, age, profession, residence, connections |
| **03_personality.md** | How you act | Temperament, mannerisms, speech patterns, physical presence |
| **04_public_secret.md** | What everyone knows | Your public role at the party (punch supplier, businessman) |
| **05_private_secrets.md** | What you hide | 3 secrets combined: Daisy relationship, recipe theft, piano wire |
| **06_goals_and_status.md** | Your objectives & truth | 4 goals + innocent status (but looks guilty) |
| **07_how_to_play.md** | Performance guide | Physical acting, voice, scene-by-scene tips, strategic advice |
| **08_relationships.md** | Social dynamics | Detailed relationship with all 10 other characters |
| **09_back_cover.md** | Back cover content | Thematic closing, character motto, final encouragement |

---

## 🎯 Design Philosophy

### V2 Improvements Over V1:

**V1 Problems:**
- 11 tiny fragments (some 3-4 lines)
- Repetitive structures
- Difficult to maintain
- Hard to generate cohesive booklets

**V2 Solutions:**
- **9 substantive files** (avg 100-300 lines each)
- **Combined related content** (3 secrets → 1 file, goals+status → 1 file)
- **Richer, actionable content** (how_to_play expanded from 5 bullets to 500 lines!)
- **ALL 10 characters mapped** in relationships (vs 5 in V1)

---

## 📊 Content Statistics

| Snippet | Lines | Words (approx) | Density |
|---------|-------|----------------|---------|
| 01_cover | ~30 | 150 | Light |
| 02_identity | ~80 | 400 | Medium |
| 03_personality | ~120 | 600 | Medium |
| 04_public_secret | ~50 | 250 | Light |
| 05_private_secrets | ~250 | 1,300 | **HEAVY** |
| 06_goals_and_status | ~200 | 1,000 | Heavy |
| 07_how_to_play | ~500 | 2,500 | **EPIC** |
| 08_relationships | ~350 | 1,800 | **HEAVY** |
| 09_back_cover | ~50 | 250 | Light |
| **TOTAL** | **~1,630** | **~8,250** | Professional booklet |

---

## 🛠️ How These Snippets Are Used

### 1. **Quick Sheet Generation (Typst)**
- `scripts/build_quick_sheet_typst.py` reads these snippets
- Combines them into `filipp_quick.typ`
- Compiles to `08_Filipp_Moretti_Entrepreneur_QUICK.pdf`

### 2. **Full Dossier (Master Reference)**
- `FULL_DOSSIER.md` contains COMPLETE information (including GM secrets)
- Snippets = **player-safe subset** of FULL_DOSSIER

### 3. **Canva Booklet (Manual Design)**
- Copy/paste from snippets into Canva templates
- See: `09_DESIGN_ASSETS/CANVA_EXPORT_GUIDE.md`

---

## 🔄 Maintenance Workflow

### When Updating Character Content:

1. **Edit FULL_DOSSIER.md first** (single source of truth)
2. **Propagate changes to snippets** (extract player-safe sections)
3. **Rebuild quick sheet**: `make filipp` or `./scripts/rebuild_filipp.sh`
4. **Update Canva booklet** (if using manual design route)

### Content Sync Checklist:
- [ ] FULL_DOSSIER.md updated?
- [ ] Relevant snippets updated?
- [ ] Quick sheet rebuilt (`make filipp`)?
- [ ] PDF reviewed (visual check)?
- [ ] Canva booklet updated (if applicable)?

See: `00_PROJECT_DOCS/CHARACTER_CONTENT_SYNC_WORKFLOW.md`

---

## 🎨 Snippet Content Guidelines

### What Goes in Each Snippet:

**01_cover.md:**
- Portrait frame/photo placeholder
- Character name + subtitle
- Thematic quote (optional)

**02_identity.md:**
- Factual basics (name, age, job, residence)
- Connection to host/party
- NO secrets here (all public info)

**03_personality.md:**
- Temperament, behavioral patterns
- Physical mannerisms (gestures, voice)
- How you PRESENT to others
- Speech examples

**04_public_secret.md:**
- What you can freely admit
- Your "cover story" for being at the party
- Doesn't incriminate you

**05_private_secrets.md:**
- 3 major secrets combined
- Strategic revealing advice for each
- How they interconnect

**06_goals_and_status.md:**
- 4 concrete goals for tonight
- Your true status (innocent/guilty)
- Strategy for achieving goals

**07_how_to_play.md:**
- Practical acting tips (voice, gestures, movement)
- Scene-by-scene guidance (Act I, II, III, IV)
- Key performance moments (speeches, reactions)
- Social strategy advice

**08_relationships.md:**
- Detailed breakdown of ALL other characters
- How to interact with each
- Relationship evolution (before/after key events)
- Alliance/tension/neutral zones mapped

**09_back_cover.md:**
- Thematic summary of character
- Inspirational/cautionary message
- Character motto/philosophy
- Final encouragement to player

---

## 🚫 What NOT to Include in Snippets

### Player Should Never See:

- **GM-only information** (other characters' secrets, killer identity if player is innocent)
- **Meta-narrative** (plot structure, twist reveals)
- **Other players' motivations** (only what your character knows/observes)
- **Detailed crime timeline** (unless you're the killer)
- **Puzzle solutions** (clues yes, solutions no)

### These Stay in FULL_DOSSIER Only:
- Complete crime timeline (all perspectives)
- GM performance notes
- Other characters' backstories (beyond what you'd know)
- Murder method details (if you're innocent)

---

## 📦 Backup & Version Control

### Current State:
- **V2 structure** (9 files, substantive content)
- **V1 backup** preserved in `snippets_old_structure/` (11 files, original structure)

### If You Need to Rollback:
```bash
# From character directory
cp -r snippets_old_structure/* snippets/
```

### Version History:
- **V1** (Jan 2025): 11 minimal snippets
- **V2** (Jan 10, 2025): 9 substantive snippets, combined secrets/goals, MASSIVE how_to_play expansion

---

## 🎭 Filipp-Specific Notes

### Character Essence:
**Innocent man drowning in circumstantial evidence**

### Key Themes:
1. **Passionate honesty** (doesn't hide feelings = paradoxical defense)
2. **Good intentions → bad outcomes** (recipe sharing, piano wire, Daisy protection)
3. **Honor code** (business not blood, family first, keep word)
4. **Italian warmth** (gestures, language mixing, emotional expressiveness)

### Performance Priorities:
1. **Protect Daisy** (volcanic defense = defining moment)
2. **Defend the punch** (reputation = business survival)
3. **React to piano wire** (genuine horror = key innocence proof)
4. **Passionate hatred of Reggie** (admitted openly = honesty defense)

### Player Experience Goal:
**"I look SO guilty, but I'm innocent! How do I prove it?!"**

---

## 📞 Questions?

**For snippet structure questions:**
- See: `00_PROJECT_DOCS/SNIPPET_STRUCTURE_V2_STANDARD.md`

**For content sync workflow:**
- See: `00_PROJECT_DOCS/CHARACTER_CONTENT_SYNC_WORKFLOW.md`

**For building quick sheets:**
- See: `09_DESIGN_ASSETS/QUICK_SHEET_SYSTEM.md`
- Run: `make filipp` or `./scripts/rebuild_filipp.sh`

**For Canva booklets:**
- See: `09_DESIGN_ASSETS/CANVA_EXPORT_GUIDE.md`

---

## ✅ Snippet Quality Checklist

When creating/updating snippets:

- [ ] **Player-safe?** (No GM secrets leaked)
- [ ] **Actionable?** (Player can USE this info to roleplay)
- [ ] **Consistent?** (Matches FULL_DOSSIER + other snippets)
- [ ] **Complete?** (Enough detail to perform character)
- [ ] **Engaging?** (Written to excite player, not bore)
- [ ] **Formatted?** (Markdown properly structured)
- [ ] **Tested?** (Quick sheet builds without errors)

---

## 🍸 Avanti!

These snippets transform **dry character data** into **living, playable performance guides**.

Filipp Moretti isn't just facts on a page—he's **passionate gestures, Italian phrases, volcanic defenses, and tragic irony**.

**Make the player FEEL like The Silver Fox.**

*L'onore è tutto.* 🎭
