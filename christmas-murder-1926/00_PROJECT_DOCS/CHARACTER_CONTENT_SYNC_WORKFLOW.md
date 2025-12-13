# Character Content Synchronization Workflow
## Automatic Rule for Updating Character Folders

**Created:** October 7, 2025  
**Status:** ✅ Active Rule  
**Purpose:** Ensure character folders stay synchronized with finalized content (PDFs, Canva designs, documents)

---

## 🔄 AUTOMATIC WORKFLOW RULE

### When User Provides Character Content:

**Trigger Conditions:**
- User shares a PDF, Canva design, or document with character information
- User uploads character booklet, dossier, or finalized content
- User provides updated character details in any format

**Automatic Action:**
1. **Analyze the content** (view with markitdown if PDF, read if text)
2. **Ask the user:**
   ```
   "I see you've provided [character name] content. 
   Would you like me to update the character folder 
   (02_CHARACTERS/XX_Character_Name/notes.md) 
   with this information?"
   ```
3. **If YES:** Update the character's `notes.md` file with:
   - All relationship details
   - Personality traits & mannerisms
   - Secrets (all layers)
   - Goals/objectives
   - Performance tips ("How to Play")
   - Any other relevant content
4. **Sync booklet location** in the notes (link to PDF in design assets)

---

## 📋 STANDARDIZED UPDATE FORMAT

### Character notes.md Structure:

```markdown
# [Character Name] - Complete Character Dossier
## [Subtitle/Role]

**Player:** [TBD or assigned name]
**Status:** ✅ COMPLETE DOSSIER - Synced with [source]
**Last Updated:** [Date]

---

## QUICK REFERENCE
[Basic stats]

## IDENTITY
[Name, age, profession, connection to host]

## RELATIONSHIPS
[All character relationships with full context]

## PERSONALITY
[Traits, mannerisms, signature phrases]

## SECRETS (Layered)
[Public → Private secrets in order]

## GOALS TONIGHT
[Character objectives]

## DID YOU KILL HIM?
[Murder culpability]

## HOW TO PLAY
[Performance tips, accent, gestures, reactions]

## BOOKLET LOCATION
[Link to PDF/Canva file]

## NEXT STEPS
[Checklist of remaining tasks]
```

---

## 🎯 CONTENT SOURCES TO SYNC

### Priority 1 (Always Ask to Sync):
- ✅ Canva-exported PDFs (character booklets)
- ✅ User-provided character documents
- ✅ Finalized player dossiers
- ✅ Character sheet PDFs

### Priority 2 (Ask If Substantial):
- 🟡 Updated relationship details
- 🟡 Revised secrets or goals
- 🟡 Performance tip additions

### Priority 3 (Optional Sync):
- 🔵 Minor edits or typo fixes
- 🔵 Formatting changes only

---

## 🔗 CROSS-REFERENCING

When updating character folders, also check:

1. **MEMORY_BANK.md** - Ensure key facts align
2. **CHARACTER_ANALYSIS_COMPLETE.md** - Cross-reference relationships
3. **Other character notes** - Verify reciprocal relationships
4. **HELENA_COMPLETE_DOSSIER.md** - GM master guide consistency

---

## 📂 FILE ORGANIZATION LINKS

After syncing content, ensure these links are correct in notes.md:

```markdown
**Full Analysis:** See `/00_PROJECT_DOCS/CHARACTER_ANALYSIS_COMPLETE.md`
**Player Pack:** `/03_UNIVERSAL_MATERIALS/player_packs/XX_Name_pack/`
**Canva Booklet:** `/09_DESIGN_ASSETS/character_booklets/XX_Name/`
**Booklet PDF:** `[path to actual PDF]`
```

---

## ✅ SYNC CHECKLIST

When updating a character's notes.md:

```
□ All relationships copied with full descriptions
□ Personality traits & mannerisms included
□ All secret layers present (public → private)
□ Goals/objectives clearly listed
□ "Did You Kill Him?" section complete
□ Performance tips ("How to Play") included
□ Italian phrases / accent notes (if applicable)
□ Emotional beats / reactions documented
□ Booklet location linked
□ Date error corrections noted (if any)
□ Cross-references to other docs verified
```

---

## 🚨 ERROR HANDLING

### If Content Contains Date Errors:
1. ✅ Note the error in the character notes
2. ✅ Document correct date with source
3. ✅ Mark as "⚠️ NEEDS CORRECTION in [source]"
4. ✅ Update CHANGELOG.md with error tracking

### If Content Conflicts with Existing Info:
1. 🛑 **STOP** - Don't auto-update
2. 📢 **ASK USER:** "I found conflicting information. Which should I use?"
3. ✅ Update after user clarifies
4. 📝 Document decision in notes

---

## 📊 TRACKING SYNCED CONTENT

### Status Indicators in notes.md:

```markdown
**Status:** ✅ COMPLETE DOSSIER - Synced with Canva booklet
**Status:** 🟡 PARTIAL - Basic notes only
**Status:** ⚠️ NEEDS SYNC - Canva version newer
**Status:** 🔴 NOT STARTED - Analysis only
```

---

## 🎭 CHARACTER-SPECIFIC CONSIDERATIONS

### For Each Character, Preserve:
- **Unique voice/accent** (Italian for Filipp, spiritual for Emilia, etc.)
- **Key relationships** (with emotional context)
- **Layered secrets** (strategic reveal order)
- **Performance physicality** (gestures, mannerisms)
- **Signature phrases** (catchphrases, expressions)
- **Goals hierarchy** (primary vs secondary objectives)

---

## 🔄 WORKFLOW EXAMPLE (Filipp Moretti)

### What Happened (October 7, 2025):

1. **User uploaded:** `Ficha de Personagem Filipp (2).pdf` (8.8 MB Canva export)
2. **I analyzed:** Used markitdown tool to view content
3. **I asked:** "Update character folder with Canva content?"
4. **User confirmed:** "Yes - update AND create workflow rule"
5. **I updated:** `02_CHARACTERS/08_Filipp_Moretti_Entrepreneur/notes.md`
6. **Content synced:**
   - All 4 layered secrets (detailed)
   - 6 full relationships (Reggie, Daisy, James, Helena, John, Father Juan)
   - Personality + mannerisms + Italian phrases
   - Performance tips ("How to Play")
   - Goals + "Did You Kill Him?" section
   - Booklet location reference
7. **Created:** This workflow rule document

**Result:** Character folder now mirrors Canva booklet exactly! ✅

---

## 📝 COMMIT MESSAGES

When syncing character content, use commit format:

```
Update [Character Name] notes with [source] content

- Synced from: [Canva booklet / user document / etc]
- Added: [list major additions]
- Fixed: [any corrections]
- Status: Complete dossier ready for player assignment
```

---

## 🎯 FUTURE IMPROVEMENTS

### Potential Enhancements:
- [ ] Automated cross-reference checker (verify reciprocal relationships)
- [ ] Version tracking (track multiple revisions of same character)
- [ ] Diff viewer (show what changed between syncs)
- [ ] Batch sync (update multiple characters at once)
- [ ] Export templates (generate notes.md from Canva structure)

---

## 📞 QUICK REFERENCE

**This workflow ensures:**
1. Character folders = single source of truth
2. Canva booklets ↔ notes.md stay synchronized
3. No information lost between design and documentation
4. Easy player reference (one comprehensive notes.md file)
5. GM preparation simplified (all character info in one place)

**Active for:** All 11 characters  
**Next application:** When user provides content for other characters (JC, Helena, James, etc.)

---

*This is an active workflow rule. Any time character content is provided, this process triggers automatically.*
