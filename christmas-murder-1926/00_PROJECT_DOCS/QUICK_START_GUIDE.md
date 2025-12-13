# Quick Start Guide - Christmas Murder Dinner 1926

**Welcome to your organized project!**

This guide will help you navigate the folder structure and understand where everything goes.

---

## 🎯 FINDING THINGS QUICKLY

### "I need to work on character dossiers"
→ Go to `02_CHARACTERS/[character_name]/`

### "I need to design a clue card"
→ Go to `04_GAME_MASTER_MATERIALS/clue_system/`
→ Use `_CLUE_TEMPLATE.md` as your starting point

### "I need to edit the video"
→ Go to `05_PROMOTIONAL_VIDEO/`
→ Script in `01_Script/`
→ Assets in `02_Assets/`
→ Exports in `04_Exports/`

### "I need to track what's done"
→ Open `00_PROJECT_DOCS/MASTER_CHECKLIST.md`

### "I need to see the timeline"
→ Open `00_PROJECT_DOCS/PROJECT_TIMELINE.md`

### "I need to know what props to buy"
→ Open `06_PROPS_AND_PHYSICAL/props_master_list.md`

---

## 📁 FOLDER STRUCTURE AT A GLANCE

```
00_PROJECT_DOCS/        ← Start here! Documentation and checklists
01_CORE_NARRATIVE/      ← Plot, relationships, timeline of crime
02_CHARACTERS/          ← 11 character folders + template
03_UNIVERSAL_MATERIALS/ ← Invitations, menu, rules (for all players)
04_GAME_MASTER_MATERIALS/ ← Your master script, clues, timing guides
05_PROMOTIONAL_VIDEO/   ← Video script, assets, exports
06_PROPS_AND_PHYSICAL/  ← Props lists, DIY guides, decorations
07_FOOD_AND_LOGISTICS/  ← Menu, recipes, space setup, schedule
08_REFERENCE_AND_RESEARCH/ ← 1920s research, inspirations
09_DESIGN_ASSETS/       ← Fonts, colors, templates, Canva links
10_ARCHIVE/             ← Old versions, backups, conversations
```

---

## 🔄 TYPICAL WORKFLOW

### Creating a New Character
1. Go to `02_CHARACTERS/[character_folder]/`
2. Copy `_CHARACTER_TEMPLATE.md`
3. Rename to `character_dossier.md`
4. Fill in all sections
5. Add character photo (as `character_photo.jpg`)
6. Export to PDF when complete (`character_dossier_PRINT.pdf`)

### Creating a New Clue
1. Go to `04_GAME_MASTER_MATERIALS/clue_system/`
2. Copy `_CLUE_TEMPLATE.md`
3. Save to appropriate tier folder: `tier1_clues/clue_01.md`
4. Fill in all sections
5. Design the card (Canva or other tool)
6. Export print version
7. Update `clue_master_list.md`

### Designing Universal Materials
1. Create design in Canva
2. Save editable link to appropriate folder
3. Export PDF to same folder with `_PRINT.pdf` suffix
4. Keep draft versions separate (`_DRAFT_v1.pdf`)

---

## 📝 NAMING CONVENTIONS

**Editable files:**
- `filename.md` (Markdown for text)
- `filename_EDITABLE.canva` (Canva link)

**Print-ready files:**
- `filename_PRINT.pdf`

**Draft versions:**
- `filename_DRAFT_v1.pdf`
- `filename_DRAFT_v2.pdf`

**Final versions:**
- `filename_FINAL.pdf`

**Status:**
- Use emoji indicators in files:
  - 🔴 Not started
  - 🟡 In progress
  - 🟢 Complete
  - ⚠️ Needs review
  - ✅ Approved final

---

## ✅ DAILY WORKFLOW TIPS

### Monday Morning
1. Review `PROJECT_TIMELINE.md` for current week
2. Check `MASTER_CHECKLIST.md` for pending tasks
3. Prioritize top 3-5 items for the week

### End of Each Work Session
1. Update relevant status indicators
2. Note progress in files you worked on
3. If major work completed, update `CHANGELOG.md`

### Friday
1. Review week's accomplishments
2. Update `MASTER_CHECKLIST.md`
3. Plan next week's priorities

---

## 🎨 WORKING WITH CANVA

1. Create design in Canva
2. Save the Canva link in a markdown file:
   ```markdown
   # [Item Name] - Canva Link
   
   **Editable Design:** [Canva Link Here]
   **Last Updated:** [Date]
   **Status:** 🟡 In progress
   ```
3. Export as PDF to same folder
4. Name exported file `[item]_PRINT.pdf`

---

## 💾 BACKUP STRATEGY

### Before Making Major Changes
1. Copy current version to `10_ARCHIVE/old_versions/`
2. Add date to filename: `character_dossier_2025-10-07.md`
3. Make your changes
4. Document in `CHANGELOG.md`

### Regular Backups
- Weekly: Backup entire project folder
- After major milestones: Save copy externally
- Export important Claude conversations to `10_ARCHIVE/conversation_exports/`

---

## 🔍 SEARCHING FOR CONTENT

### By Character Name
Use your file explorer or VS Code search function to find all references to a character across files.

### By Status
Search for emoji indicators:
- `🔴` finds all not-started items
- `🟡` finds all in-progress items
- `🟢` finds all completed items

### By Date
Search for specific dates in timeline and checklist files.

---

## 📤 PREPARING FOR PRINT DAY

### Week Before Printing (December 1-7)
1. Go through each section in `03_UNIVERSAL_MATERIALS/`
2. Verify all `_PRINT.pdf` files exist
3. Test print ONE of each document
4. Check quality, colors, readability
5. Make adjustments if needed

### Print Day (Week of December 8)
1. Open `MASTER_CHECKLIST.md`
2. Follow print list under "Printing & Assembly"
3. Check off each item as printed
4. Organize into player packs

---

## 🚨 TROUBLESHOOTING

### "I can't find a file"
- Check `00_PROJECT_DOCS/README.md` for folder descriptions
- Use file explorer search function
- Check `10_ARCHIVE/` if it might have been moved

### "I don't know what to work on next"
- Open `PROJECT_TIMELINE.md` and find current week
- Or open `MASTER_CHECKLIST.md` and look for 🔴 items
- Or check `README.md` "Current Priority Tasks"

### "I made a mistake and need the old version"
- Check `10_ARCHIVE/old_versions/`
- Look for dated backup files

---

## 🎯 CRITICAL DEADLINES REMINDER

| Date | What's Due |
|------|------------|
| **Nov 15** | Promotional video sent to guests |
| **Nov 22** | All print materials finalized |
| **Dec 8** | All printing completed |
| **Dec 15** | Full rehearsal |
| **Dec 24** | GAME NIGHT! 🎭 |

---

## 💡 PRO TIPS

1. **Update as you go:** Don't wait to update checklists - do it immediately
2. **Use templates:** Always start with a template file rather than from scratch
3. **Be consistent:** Follow naming conventions strictly
4. **Document decisions:** When you make an important choice, note it in `CHANGELOG.md`
5. **Test early:** Print test copies of materials well before deadline
6. **Stay organized:** If you create a file, put it in the right folder immediately

---

## 📱 MOBILE ACCESS

If you need to check files on your phone:
- Keep project synced to cloud storage (Google Drive, Dropbox)
- Use markdown reader app for `.md` files
- PDF files open natively

---

## ❓ NEED HELP?

If you're ever confused about where something should go:
1. Check this guide
2. Check `README.md` in `00_PROJECT_DOCS/`
3. Look at the folder structure tree
4. Use the templates as examples

---

**Remember: This system is designed to help you, not overwhelm you. Take it section by section, and you'll have everything organized beautifully by game night!**

*Good luck, Helena! Your guests are going to have an unforgettable experience.*

🎭🔍🎄
