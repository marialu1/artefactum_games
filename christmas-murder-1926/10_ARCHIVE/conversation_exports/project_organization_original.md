# 📋 DOCUMENT FOR CLAUDE CODE AGENT: Christmas Murder Dinner 1926 - Project Organization

---

## 🎯 PROJECT OVERVIEW

**Project Name:** Christmas Murder Dinner 1926  
**Project Type:** Murder mystery roleplay dinner party game  
**Status:** In active development (~75% complete)  
**Target Date:** December 24th, 2025  
**Number of Players:** 11 (10 players + 1 game master/host)

---

## 📁 PROJECT CONTEXT

This is a complete murder mystery dinner party game set in 1926 Manhattan. The host (Helena) has been developing:

1. **Character dossiers** for 11 players (mostly complete)
2. **Universal materials** (invitations, mansion dossier, menu, rules, guest gallery)
3. **Game master materials** (master script, clue system, timing guides)
4. **Promotional video** (explanatory video with narration - in progress)
5. **Physical props list** and decoration planning
6. **Food/logistics** planning

The game involves a murder at a Christmas Eve soirée. Players investigate, interrogate each other, and solve the crime while staying in character.

---

## 🎯 YOUR MISSION

You are organizing the project folder structure for this complex, multi-component project. Your goals:

1. Create a logical, intuitive folder structure
2. Set up placeholder files with clear naming conventions
3. Document what goes where
4. Establish a system that supports both:
   - **Digital workflow** (editing docs, video production)
   - **Physical production** (printing materials for game night)
5. Make it easy for Helena to find anything quickly during prep and game night

---

## 📂 REQUIRED FOLDER STRUCTURE

Create the following structure in the project root:

```
Christmas_Murder_Dinner_1926/
│
├── 00_PROJECT_DOCS/
│   ├── README.md
│   ├── PROJECT_TIMELINE.md
│   ├── MASTER_CHECKLIST.md
│   └── CHANGELOG.md
│
├── 01_CORE_NARRATIVE/
│   ├── crime_summary.md
│   ├── timeline_of_crime.md
│   ├── character_relationships.md
│   ├── theme_and_tone.md
│   └── plot_twists.md
│
├── 02_CHARACTERS/
│   ├── 01_JC_Mendes_Detective/
│   │   ├── character_dossier.md
│   │   ├── character_dossier_PRINT.pdf
│   │   ├── character_photo.jpg
│   │   └── notes.md
│   ├── 02_Helena_Ashford_Hostess/
│   ├── 03_James_Harrods_Banker/
│   ├── 04_Emilia_Harrods_Spiritualist/
│   ├── 05_Daisy_Valmont_Diva/
│   ├── 06_Maria_Fletcher_Journalist/
│   ├── 07_Padre_Rui_Santos/
│   ├── 08_Filipp_Moretti_Entrepreneur/
│   ├── 09_Ines_Beaumont_Daughter/
│   ├── 10_Denise_Beaumont_Daughter/
│   ├── 11_Ricardo_Victim_Assistant/
│   └── _CHARACTER_TEMPLATE.md
│
├── 03_UNIVERSAL_MATERIALS/
│   ├── invitation/
│   │   ├── invitation_design.pdf
│   │   ├── invitation_design_EDITABLE.canva (link or file)
│   │   ├── invitation_back_personalized/
│   │   │   ├── invitation_JC.pdf
│   │   │   ├── invitation_James.pdf
│   │   │   └── ... (one per player)
│   │   └── invitation_PRINT_ALL.pdf
│   ├── mansion_dossier/
│   │   ├── mansion_page1_photo_history.pdf
│   │   ├── mansion_page2_floor_plan.pdf
│   │   ├── mansion_photo.jpg
│   │   ├── floor_plan_SOURCE.png
│   │   └── mansion_dossier_PRINT.pdf
│   ├── menu/
│   │   ├── menu_design.pdf
│   │   ├── menu_EDITABLE.canva
│   │   └── menu_PRINT.pdf
│   ├── guest_gallery/
│   │   ├── gallery_layout.pdf
│   │   ├── gallery_EDITABLE.canva
│   │   ├── all_photos/
│   │   │   ├── 01_JC_vintage.jpg
│   │   │   ├── 02_Helena_vintage.jpg
│   │   │   └── ... (all 11)
│   │   └── gallery_PRINT.pdf
│   ├── rules_guide/
│   │   ├── rules_FULL_9pages.md
│   │   ├── rules_FULL_9pages.pdf
│   │   ├── rules_ESSENTIALS_2pages.md
│   │   ├── rules_ESSENTIALS_2pages.pdf
│   │   └── rules_PRINT.pdf
│   └── player_packs/
│       ├── pack_assembly_guide.md
│       ├── 01_JC_pack/
│       │   ├── invitation.pdf
│       │   ├── dossier.pdf
│       │   ├── menu.pdf
│       │   ├── gallery.pdf
│       │   ├── rules_essentials.pdf
│       │   └── PRINT_ORDER.txt
│       └── ... (one folder per player)
│
├── 04_GAME_MASTER_MATERIALS/
│   ├── helena_master_script/
│   │   ├── master_script_FULL.md
│   │   ├── master_script_FULL.pdf
│   │   ├── cheat_sheet_1page.md
│   │   ├── cheat_sheet_1page.pdf
│   │   └── cheat_sheet_LAMINATED.pdf
│   ├── clue_system/
│   │   ├── clue_master_list.md
│   │   ├── tier1_clues/ (9 initial clues)
│   │   │   ├── clue_01_maria_newspaper.md
│   │   │   ├── clue_01_CARD.pdf
│   │   │   └── ... (all tier 1)
│   │   ├── tier2_clues/ (14 investigation clues)
│   │   │   └── ... (similar structure)
│   │   ├── tier3_clues/ (3 decisive clues)
│   │   │   └── ... (similar structure)
│   │   ├── clue_hiding_map.md
│   │   └── ALL_CLUES_PRINT.pdf
│   ├── special_documents/
│   │   ├── emilia_suicide_letter.md
│   │   ├── emilia_suicide_letter_HANDWRITTEN.pdf
│   │   ├── reggie_posthumous_letter.md
│   │   ├── reggie_posthumous_letter_PRINT.pdf
│   │   ├── reggie_diary_last_page.md
│   │   └── ... (other special docs)
│   ├── timing_guides/
│   │   ├── act_by_act_timing.md
│   │   ├── clue_release_schedule.md
│   │   └── emergency_procedures.md
│   └── npc_scripts/
│       ├── ricardo_mordomo_script.md
│       └── ricardo_victim_script.md
│
├── 05_PROMOTIONAL_VIDEO/
│   ├── 01_Script/
│   │   ├── video_script_FULL.md
│   │   ├── video_script_ANNOTATED.md (with timing marks)
│   │   └── narration_recording.mp3
│   ├── 02_Assets/
│   │   ├── clips/
│   │   │   ├── mansion_exterior_01.jpg
│   │   │   ├── champagne_02.mp4
│   │   │   └── ... (20-30 clips/photos)
│   │   ├── music/
│   │   │   ├── background_jazz_main.mp3
│   │   │   ├── dramatic_stinger.mp3
│   │   │   └── music_credits.txt
│   │   ├── sound_effects/
│   │   │   └── ... (optional SFX)
│   │   └── asset_sources.md (where each came from)
│   ├── 03_CapCut_Project/
│   │   └── christmas_murder.cproj (if applicable)
│   ├── 04_Exports/
│   │   ├── video_DRAFT_v1.mp4
│   │   ├── video_DRAFT_v2.mp4
│   │   ├── video_FINAL.mp4
│   │   └── video_FINAL_compressed.mp4 (for WhatsApp)
│   └── video_production_notes.md
│
├── 06_PROPS_AND_PHYSICAL/
│   ├── props_master_list.md
│   ├── props_shopping_list.md
│   ├── props_budget.md
│   ├── purchased_items/
│   │   └── receipts_and_links.md
│   ├── diy_props/
│   │   ├── embroidered_handkerchief_HJ.md
│   │   ├── piano_wire_prep.md
│   │   └── ... (instructions for DIY items)
│   ├── decorations/
│   │   ├── decoration_plan.md
│   │   ├── decoration_shopping.md
│   │   └── room_layout_diagram.png
│   └── envelopes_and_packaging/
│       ├── envelope_aging_tutorial.md
│       ├── wax_seal_instructions.md
│       └── packaging_assembly.md
│
├── 07_FOOD_AND_LOGISTICS/
│   ├── menu_planning/
│   │   ├── final_menu.md
│   │   ├── recipes/
│   │   │   ├── silver_fox_punch.md
│   │   │   ├── appetizers.md
│   │   │   └── ... (all recipes)
│   │   ├── grocery_list.md
│   │   └── prep_timeline.md
│   ├── space_setup/
│   │   ├── room_configuration.md
│   │   ├── table_solution.md (buffet vs. improvised table)
│   │   ├── seating_plan.md
│   │   └── zone_markers.md (4 investigation zones)
│   ├── schedule/
│   │   ├── day_of_timeline.md
│   │   ├── week_before_checklist.md
│   │   └── three_days_before_checklist.md
│   └── guest_communications/
│       ├── email_2weeks_before.md
│       ├── email_10days_before.md
│       ├── reminder_3days_before.md
│       └── guest_list_dietary_restrictions.md
│
├── 08_REFERENCE_AND_RESEARCH/
│   ├── 1920s_research/
│   │   ├── fashion_reference.md
│   │   ├── language_and_slang.md
│   │   ├── historical_context.md
│   │   └── mansion_architecture.md
│   ├── murder_mystery_mechanics/
│   │   ├── clue_design_principles.md
│   │   ├── red_herring_guide.md
│   │   └── pacing_and_difficulty.md
│   ├── inspirations/
│   │   ├── knives_out_notes.md
│   │   ├── agatha_christie_elements.md
│   │   └── gatsby_aesthetic.md
│   └── etymology_and_latin/
│       └── collected_notes.md (from our conversations)
│
├── 09_DESIGN_ASSETS/
│   ├── fonts/
│   │   ├── fonts_list.md
│   │   └── ... (downloaded fonts if needed)
│   ├── color_palette/
│   │   ├── color_scheme.md
│   │   └── palette_reference.png
│   ├── templates/
│   │   ├── card_template.png
│   │   ├── border_art_deco.png
│   │   └── vintage_frames/
│   └── canva_links.md (links to editable Canva designs)
│
└── 10_ARCHIVE/
    ├── old_versions/
    │   ├── character_drafts/
    │   ├── script_iterations/
    │   └── discarded_ideas/
    └── conversation_exports/
        └── ... (our Claude conversation logs if saved)
```

---

## 📝 SPECIFIC FILE CREATION INSTRUCTIONS

### **STEP 1: Create All Folders**

Create the entire folder structure exactly as shown above. Use these conventions:
- Folders with numbers (01_, 02_) indicate priority/order
- UPPERCASE names = important organizational folders
- lowercase names = content folders
- Underscore separators for readability

### **STEP 2: Create Key Documentation Files**

In `00_PROJECT_DOCS/`, create:

#### **README.md**
```markdown
# Christmas Murder Dinner 1926

A murder mystery roleplay dinner party for 11 players.

**Date:** December 24th, 2025  
**Duration:** ~5-6 hours  
**Setting:** 1926 Manhattan, Gatsby Rose Manor  
**Status:** [Update as you go]

## Quick Links
- [Master Checklist](MASTER_CHECKLIST.md)
- [Timeline](PROJECT_TIMELINE.md)
- [Character List](../02_CHARACTERS/)
- [Game Master Script](../04_GAME_MASTER_MATERIALS/helena_master_script/)

## Project Structure
[Brief explanation of folder organization]

## Current Priority Tasks
[Top 3-5 tasks to complete next]
```

#### **MASTER_CHECKLIST.md**
Create a comprehensive checklist tracking ALL deliverables:
- [ ] Character dossiers (11 total) - Status: 90% done
- [ ] Universal materials (invitation, dossier, menu, gallery, rules)
- [ ] Promotional video
- [ ] Clue cards (20 total)
- [ ] Game master materials
- [ ] Props acquisition
- [ ] Food planning
- [ ] Space setup
- [ ] Guest communications

#### **PROJECT_TIMELINE.md**
Timeline with key milestones:
```markdown
# Project Timeline

## Milestones
- **Week of Nov 15:** Complete promotional video
- **Week of Nov 22:** Finalize all printable materials
- **Week of Dec 1:** Begin props acquisition
- **Week of Dec 8:** Test print all materials
- **Week of Dec 15:** Final rehearsal and setup test
- **Dec 24:** GAME NIGHT

## Detailed Schedule
[Week-by-week breakdown]
```

### **STEP 3: Character Folder Template**

In `02_CHARACTERS/_CHARACTER_TEMPLATE.md`, create:

```markdown
# [Character Name]

**Player:** [Player's real name]  
**Age:** [Age]  
**Profession:** [Profession]  
**Role:** [Innocent / Guilty / Victim / etc.]

## Public Information
[What everyone knows]

## Private Secrets
[What only this character knows]

## Personality Traits
- [Trait 1]
- [Trait 2]
- [Trait 3]

## Mannerisms & Speech
- [Mannerism 1]
- [Signature phrase 1]

## Relationships
- **[Other Character]:** [Relationship description]

## Objective
[What this character wants to achieve tonight]

## Clues Received
### Tier 1 (Initial)
- [Clue description]

### May Discover
- [Potential clues during investigation]

## Notes
[Any additional notes]
```

Then create individual folders for each of the 11 characters with this structure.

### **STEP 4: Clue System Organization**

In `04_GAME_MASTER_MATERIALS/clue_system/`, create:

#### **clue_master_list.md**
```markdown
# Master Clue List

## Tier 1: Initial Clues (9 - distributed after murder)
| # | Name | Recipient | Type | Reveals |
|---|------|-----------|------|---------|
| 1 | Newspaper Clipping | Maria | Red Herring | Past motive |
| ... | ... | ... | ... | ... |

## Tier 2: Investigation Clues (14 - hidden in mansion)
| # | Name | Location | Type | Reveals |
|---|------|----------|------|---------|
| 1 | Piano Wire | Behind piano | TRUE | Murder weapon |
| ... | ... | ... | ... | ... |

## Tier 3: Decisive Clues (3 - final confrontation)
| # | Name | When Revealed | Type | Reveals |
|---|------|---------------|------|---------|
| 1 | Mordomo Testimony | Act IV start | TRUE | Helena's movement |
| ... | ... | ... | ... | ... |
```

For each clue, create individual files like:

#### **tier1_clues/clue_01_maria_newspaper.md**
```markdown
# Clue #1: Newspaper Clipping (1923)

**Recipient:** Maria Fletcher  
**Tier:** 1 (Initial)  
**Type:** Red Herring (motive but not killer)

## Physical Description
Yellowed newspaper clipping, folded, edges torn.

## Text Content
```
NEW YORK HERALD - October 15, 1923

JOURNALIST DISMISSED AFTER SCANDAL

Maria Fletcher, investigative reporter, 
has been terminated following publication 
of false allegations...
[Full text here]
```

## Reverse Side (Handwritten Note)
```
"Reggie Ashford: $3,000 to destroy me.
I have proof. But who would believe me?"
- M.F.
```

## Design Notes
- Aged paper texture
- Period-appropriate newspaper font
- Coffee stain in corner
- Small tear on left edge

## Printing Instructions
- Paper: Cream 120g
- Size: 10x15cm
- Age with tea before printing text? Or print then age?

## Game Purpose
Establishes Maria's strong motive but ultimately she's innocent.
```

### **STEP 5: Video Organization**

In `05_PROMOTIONAL_VIDEO/01_Script/video_script_ANNOTATED.md`:

```markdown
# Promotional Video Script - Annotated for Editing

**Total Duration:** ~4 minutes  
**Narration Duration:** [Exact time from audio file]

---

## [0:00-0:30] SECTION 1: INTRO

### Narration
> "December 24th, 1926. Manhattan's Upper East Side..."

### Visuals
- **0:00-0:07:** Mansion exterior (mansion_exterior_01.jpg)
  - Ken Burns: Slow zoom in
- **0:07-0:14:** Elegant doors opening (doors_02.mp4)
  - Transition: Dissolve (0.5s)
- **0:14-0:21:** Decorated ballroom (ballroom_03.jpg)
- **0:21-0:30:** Champagne glasses clinking (champagne_04.mp4)

### Music
- Volume: 30% background
- No ducking this section

### Text Overlays
- None

---

[Continue for each section...]
```

### **STEP 6: Props Master List**

In `06_PROPS_AND_PHYSICAL/props_master_list.md`:

```markdown
# Props Master List

## Critical Props (Murder-Related)
- [ ] Piano wire (30cm, blood-stained)
  - **Status:** Not purchased
  - **Where:** Music store or Amazon
  - **Cost:** ~€5
  - **Notes:** Need to add fake blood

- [ ] Embroidered handkerchief "H+J"
  - **Status:** Not started
  - **Where:** Buy silk handkerchief, embroider or iron-on transfer
  - **Cost:** ~€8
  - **Notes:** Cream colored, gold thread for embroidery

[Continue for all 20+ props...]

## Total Budget Estimate
**Critical Props:** €XX  
**Nice-to-Have:** €XX  
**TOTAL:** €XX
```

---

## 🎯 PRIORITY ORDER FOR ORGANIZATION

Execute in this order:

### **PHASE 1: Foundation (Do First)**
1. Create all folder structure
2. Create all files in `00_PROJECT_DOCS/`
3. Create character template
4. Create clue master list template

### **PHASE 2: Content Migration (Do Second)**
5. Move/copy existing character dossiers into `02_CHARACTERS/` folders
6. Move/copy existing universal materials (invitations, etc.) into `03_UNIVERSAL_MATERIALS/`
7. Organize video assets into `05_PROMOTIONAL_VIDEO/02_Assets/`

### **PHASE 3: Master Materials (Do Third)**
8. Create game master cheat sheet structure in `04_GAME_MASTER_MATERIALS/`
9. Set up clue card system with individual files
10. Create timing guides

### **PHASE 4: Production Ready (Do Fourth)**
11. Create player pack assembly folders in `03_UNIVERSAL_MATERIALS/player_packs/`
12. Set up props tracking system
13. Create food/logistics planning docs

---

## 📋 SPECIAL INSTRUCTIONS

### **Naming Conventions**
- **Files for editing:** `filename.md` or `filename_EDITABLE.canva`
- **Files for printing:** `filename_PRINT.pdf`
- **Draft versions:** `filename_DRAFT_v1.pdf`
- **Final versions:** `filename_FINAL.pdf`

### **Markdown Formatting**
Use consistent markdown:
- H1 (#) for major sections
- H2 (##) for subsections
- H3 (###) for details
- Tables for structured data
- Checkboxes [ ] for task lists
- Code blocks for formatted text that needs preservation

### **Cross-Referencing**
When creating files that reference others, use relative paths:
```markdown
See also: [Character Relationships](../01_CORE_NARRATIVE/character_relationships.md)
```

### **Status Tracking**
Include status indicators in relevant files:
- 🔴 Not started
- 🟡 In progress
- 🟢 Complete
- ⚠️ Needs review
- ✅ Approved final

---

## 📦 DELIVERABLES FOR HELENA

After completing organization, provide:

1. **README.md** with project overview
2. **MASTER_CHECKLIST.md** showing what's done vs. what's pending
3. **Quick Start Guide** explaining:
   - Where to find things
   - How to add new content
   - Naming conventions
   - Backup strategy
4. **Next Steps Document** with top 5 priorities

---

## 🚨 CRITICAL NOTES

1. **Do NOT delete or modify existing files** until confirming with Helena
2. **Create folders and templates first**, then ask before moving content
3. **Maintain backup** of original materials before reorganizing
4. **Document decisions** in CHANGELOG.md as you work
5. **Flag any ambiguities** for Helena to clarify

---

## ❓ QUESTIONS TO CLARIFY WITH HELENA

Before proceeding, confirm:
- [ ] Are there existing files that need to be preserved exactly as-is?
- [ ] Is there a preferred backup location for old versions?
- [ ] Any files that should NOT be included in this organization?
- [ ] Preferred markdown editor or should files be editor-agnostic?
- [ ] Should sensitive information (addresses, phone numbers) be in separate private folder?

---

## 🎯 SUCCESS CRITERIA

Project organization is complete when:
- ✅ All folders exist and are logically structured
- ✅ README and documentation files are created
- ✅ Templates are ready for content population
- ✅ Helena can find any file in <30 seconds
- ✅ System supports both digital editing and physical printing workflows
- ✅ Clear separation between drafts, finals, and print-ready files
- ✅ Master checklist tracks all deliverables

---

**END OF DOCUMENT**

*This document was created for AI agent execution. Agent should read entirely before beginning work, then execute in phases, documenting progress in CHANGELOG.md.*

