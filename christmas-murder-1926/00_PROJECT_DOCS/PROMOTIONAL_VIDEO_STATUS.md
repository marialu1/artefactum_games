# Promotional Video - Project Status

**Location:** Separate project at `../PROMOTIONAL_VIDEO`  
**Last Updated:** October 13, 2025  
**Status:** 🟡 In Progress - Final Export Phase

---

## 📁 Project Organization

The promotional video is developed in a **separate, dedicated project** with its own repository structure at:

```
../PROMOTIONAL_VIDEO/
```

This separation allows for:
- Independent version control for video assets
- Dedicated AI asset generation workflow
- Separate dependency management (HuggingFace, video editors)
- Cleaner separation of concerns

---

## 🎬 Current Status Overview

### ✅ Completed
- [x] Script development and structure (6 sections, ~4min video)
- [x] Prompt database creation (23 AI prompts organized by priority)
- [x] Asset generation system (HuggingFace integration)
- [x] Video editing in progress (CapCut/KDENlive)

### 🟡 In Progress
- [ ] Final video export
- [ ] Compressed version for WhatsApp/messaging

### 🔴 Pending
- [ ] Asset attribution document (`asset_sources.md`)
- [ ] Production notes documentation
- [ ] Copy final video to main project for distribution

---

## 🗂️ Video Project Structure

```
PROMOTIONAL_VIDEO/
├── README.md                      # Complete video project documentation
├── prompts_database.yaml          # 23 AI prompts (must-have/important/nice-to-have)
├── video_asset_manager.py         # Interactive asset generation tool
├── hf_generator.py               # HuggingFace backend
│
├── 01_Script/
│   └── video_script_TEMPLATE.md   # 6-section video structure
│
├── 02_Assets/
│   ├── images/                    # Generated images (PNG)
│   ├── clips/                     # Generated videos (MP4)
│   ├── music/                     # Background music (1920s jazz)
│   └── sound_effects/            # Optional SFX
│
├── 03_CapCut_Project/            # Video editing project files
│   └── (editor-specific files)
│
└── 04_Exports/                   # Final rendered videos
    ├── christmas_murder_1926_promo_FINAL.mp4
    └── christmas_murder_1926_promo_compressed.mp4
```

---

## 📋 Video Sections Breakdown

| Section | Timeframe | Description | Status |
|---------|-----------|-------------|--------|
| **01_Opening** | 0:00-0:30 | Mysterious mansion introduction | 🟢 Complete |
| **02_Setting** | 0:30-1:00 | 1920s Christmas party atmosphere | 🟢 Complete |
| **03_Characters** | 1:00-2:00 | Character reveals and intrigue | 🟢 Complete |
| **04_Murder** | 2:00-2:30 | Dramatic twist - lights flicker | 🟢 Complete |
| **05_Gameplay** | 2:30-3:30 | How to play explanation | 🟢 Complete |
| **06_Closing** | 3:30-4:00 | Call to action | 🟡 In progress |

---

## 🔗 Key Files in Video Project

### Must Read
- `README.md` - Complete workflow documentation
- `prompts_database.yaml` - All 23 AI prompts with metadata
- `QUICK_START.md` - Quick reference guide

### Asset Generation
- `video_asset_manager.py` - Interactive CLI tool
- `hf_generator.py` - HuggingFace API integration
- `budget_manager.py` - Credit tracking

### Scripts
- `batch_generate_videos.py` - Batch generation
- `create_landscape_videos_v2.py` - Landscape format conversion

---

## 💾 Copying Final Video to Main Project

Once the video is exported, copy it to the main project:

### Recommended Location
```bash
# Create directory if needed
mkdir -p 03_UNIVERSAL_MATERIALS/promotional_video/

# Copy final exports
cp ../PROMOTIONAL_VIDEO/04_Exports/christmas_murder_1926_promo_FINAL.mp4 \
   03_UNIVERSAL_MATERIALS/promotional_video/

cp ../PROMOTIONAL_VIDEO/04_Exports/christmas_murder_1926_promo_compressed.mp4 \
   03_UNIVERSAL_MATERIALS/promotional_video/
```

### Files to Copy
- `christmas_murder_1926_promo_FINAL.mp4` - High quality version (for archive)
- `christmas_murder_1926_promo_compressed.mp4` - For WhatsApp/messaging
- `asset_sources.md` - Attribution document (when created)
- `production_notes.md` - Production notes (when created)

---

## 🎯 Next Steps

1. **Immediate** (this week)
   - [ ] Complete final video export
   - [ ] Create compressed version for messaging
   - [ ] Copy exports to main project

2. **Before Distribution** (Week of Nov 15, 2025)
   - [ ] Create `asset_sources.md` (AI attribution)
   - [ ] Write `production_notes.md`
   - [ ] Test video on different devices
   - [ ] Send to all guests via WhatsApp

3. **Documentation**
   - [ ] Update MASTER_CHECKLIST with ✅ statuses
   - [ ] Add video link to player invitations
   - [ ] Archive project after event

---

## 🚀 Quick Commands

### Navigate to Video Project
```bash
cd ../PROMOTIONAL_VIDEO
```

### Check Video Status
```bash
cd ../PROMOTIONAL_VIDEO
make video-status
```

### Launch Asset Manager
```bash
cd ../PROMOTIONAL_VIDEO
make video-assets
```

### View All Exports
```bash
ls -lh ../PROMOTIONAL_VIDEO/04_Exports/
```

---

## 📊 Timeline Integration

- **Week of Nov 15, 2025:** ✅ Send promotional video to all guests
- **Week of Nov 22, 2025:** Video should be promoting excitement
- **Week of Dec 1, 2025:** Video serves as final reminder/hype builder

---

## 🔄 Syncing Between Projects

### From Video Project to Main Project
When video is finalized:
```bash
# Run from main project root
./scripts/sync_video_exports.sh
```

(Script to be created if automation is desired)

### Manual Sync
```bash
# Copy latest export
cp ../PROMOTIONAL_VIDEO/04_Exports/christmas_murder_1926_promo_FINAL.mp4 \
   03_UNIVERSAL_MATERIALS/promotional_video/

# Verify
ls -lh 03_UNIVERSAL_MATERIALS/promotional_video/
```

---

## 📝 Notes

- **AI Credits Used:** ~10-15 HuggingFace credits for asset generation
- **Video Length:** Target ~3:30-4:00 minutes
- **Resolution:** 1920x1080 (1080p) for final, 1280x720 (720p) for compressed
- **Format:** MP4 (H.264 codec)
- **Audio:** 1920s jazz background music + narration

---

*For detailed technical documentation, see `../PROMOTIONAL_VIDEO/README.md`*
