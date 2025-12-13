# Canva Export Guide - Character Booklets
## How to Export from Canva to Project

**Last Updated:** October 7, 2025

---

## 📋 QUICK WORKFLOW

### 1. In Canva - Export Settings

#### **For Print (High Quality)**
```
Canva → Share (top right) → Download
├─ File type: PDF Print
├─ Quality: High quality (300 DPI)
├─ Flatten PDF: YES (important!)
├─ Crop marks & bleed: YES (if printing professionally)
└─ Download
```

**Save as:** `CharacterName_Booklet_PRINT.pdf`

#### **For Preview/Screen Viewing**
```
Canva → Share → Download
├─ File type: PNG
├─ Quality: High quality
├─ Pages: All pages
└─ Download
```

**Save as:** `CharacterName_Booklet_PREVIEW.png`

---

## 📂 WHERE TO SAVE FILES

### Project Structure:
```
09_DESIGN_ASSETS/
└── character_booklets/
    ├── 01_JC_Mendes/
    │   ├── JC_Mendes_Booklet_PRINT.pdf       ← Print version
    │   ├── JC_Mendes_Booklet_PREVIEW.png     ← Preview images
    │   ├── JC_Mendes_Canva_Link.txt          ← Canva edit link
    │   └── jc_photo_sepia.jpg                ← Character photo
    │
    ├── 02_Helena_Ashford/
    │   ├── Helena_Ashford_Booklet_PRINT.pdf
    │   ├── Helena_Ashford_Booklet_PREVIEW.png
    │   ├── Helena_Ashford_Canva_Link.txt
    │   └── helena_photo_sepia.jpg
    │
    └── 08_Filipp_Moretti/
        ├── Filipp_Moretti_Booklet_PRINT.pdf  ← PUT YOUR PDF HERE
        ├── Filipp_Moretti_Booklet_PREVIEW.png
        ├── Filipp_Moretti_Canva_Link.txt
        └── filipp_photo_sepia.jpg
```

---

## 🎯 STEP-BY-STEP INSTRUCTIONS

### **Step 1: Export from Canva**

1. Open your Filipp Moretti design in Canva
2. Click **"Share"** button (top right corner)
3. Choose **"Download"**
4. Select settings:
   - **File type:** PDF Print (for final) OR PNG (for preview)
   - **Quality:** High quality (300 DPI)
   - **Flatten PDF:** YES
   - **All pages:** YES (make sure all 6 pages selected)
5. Click **"Download"**
6. File saves to your Downloads folder

### **Step 2: Rename File**

Rename the downloaded file to match naming convention:

**From:** `Canva-Design-12345.pdf`  
**To:** `Filipp_Moretti_Booklet_PRINT.pdf`

### **Step 3: Move to Project**

#### **Option A: Using File Manager (GUI)**
```
1. Open file manager
2. Navigate to Downloads folder
3. Find: Filipp_Moretti_Booklet_PRINT.pdf
4. Cut or Copy file
5. Navigate to:
   /home/maria/PROJ/Mystery_Crime_Party/09_DESIGN_ASSETS/character_booklets/
6. Create folder: 08_Filipp_Moretti/
7. Paste file inside
```

#### **Option B: Using Terminal**
```bash
# Create character folder (if doesn't exist)
mkdir -p 09_DESIGN_ASSETS/character_booklets/08_Filipp_Moretti

# Move PDF from Downloads
mv ~/Downloads/Filipp_Moretti_Booklet_PRINT.pdf \
   09_DESIGN_ASSETS/character_booklets/08_Filipp_Moretti/

# Verify it's there
ls 09_DESIGN_ASSETS/character_booklets/08_Filipp_Moretti/
```

### **Step 4: Save Canva Link**

1. In Canva, click **"Share"** → **"Copy link"**
2. Create a text file in the character folder
3. Paste the link so you can edit later

**Command:**
```bash
# Navigate to character folder
cd 09_DESIGN_ASSETS/character_booklets/08_Filipp_Moretti

# Create text file with Canva link
echo "https://www.canva.com/design/YOUR_DESIGN_ID/edit" > Filipp_Moretti_Canva_Link.txt
```

---

## 📊 FILE NAMING CONVENTION

### Pattern:
```
[CharacterName]_Booklet_[TYPE].[extension]

Examples:
✅ Filipp_Moretti_Booklet_PRINT.pdf
✅ Helena_Ashford_Booklet_PREVIEW.png
✅ JC_Mendes_Booklet_DRAFT_v1.pdf
```

### Types:
- **PRINT** - Final print-ready version (PDF, 300 DPI, CMYK)
- **PREVIEW** - Screen viewing (PNG/JPG, RGB)
- **DRAFT_v1** - Work in progress versions
- **FINAL** - Approved final version before printing

---

## 🎨 EXPORT FORMATS GUIDE

### When to Use Each Format:

#### **PDF Print (300 DPI)**
✅ **Use for:**
- Final print files
- Sending to print shop
- Creating physical booklets
- Archival/backup

❌ **Don't use for:**
- Quick previews (file size large)
- Web sharing (use PNG/JPG)

#### **PNG High Quality**
✅ **Use for:**
- Screen previews
- Sharing digitally
- Quick review
- Web display

❌ **Don't use for:**
- Professional printing (use PDF)

#### **JPG**
✅ **Use for:**
- Compressed previews
- Email attachments
- Low file size needed

❌ **Don't use for:**
- Anything requiring transparency
- Final print (use PDF)

---

## 📐 CANVA TEMPLATE SETUP

### Page Settings in Canva:

```
Custom Size:
Width: 148 mm (A5)
Height: 210 mm (A5)
Orientation: Portrait
Units: Millimeters
```

### Creating Multi-Page Booklet:

1. **Start:** Custom size 148 × 210 mm
2. **Add pages:** Click "+" button (bottom)
3. **Target:** 6 pages minimum (Cover + 4 interior + Back)
4. **Templates:** Duplicate pages for consistency

### Canva Bleed Settings:

If printing professionally:
```
Canva Pro Feature: Add Bleed
Amount: 3mm all sides
Enable: Crop marks & bleed when downloading
```

---

## ✅ QUALITY CHECKLIST

Before exporting, verify:

```
□ All 6 pages created
□ Text readable at 11pt minimum
□ Photos placed and sized correctly
□ "CONFIDENTIAL" stamp visible
□ Character name consistent throughout
□ No typos in character info
□ Margins respected (12-15mm)
□ Colors look good on screen
□ Fonts embedded (PDF only)
```

---

## 🔄 UPDATING EXISTING DESIGNS

### Workflow for Changes:

```
1. Edit in Canva (use saved link)
2. Make changes
3. Export new version
4. Rename with version number:
   - Filipp_Moretti_Booklet_DRAFT_v2.pdf
5. Move to project folder
6. Test print/preview
7. If approved → rename to _FINAL.pdf
8. Delete old draft versions
```

---

## 💾 BACKUP STRATEGY

### Important Files to Backup:

```
Priority 1 (CRITICAL):
├─ *_Booklet_PRINT.pdf (all characters)
├─ *_Booklet_FINAL.pdf (approved versions)
└─ *_Canva_Link.txt (edit links)

Priority 2 (IMPORTANT):
├─ *_Booklet_PREVIEW.png
└─ Character photos (*_photo_sepia.jpg)

Priority 3 (OPTIONAL):
└─ Draft versions (*_DRAFT_v*.pdf)
```

### Backup Commands:

```bash
# Backup all print-ready PDFs
tar -czf character_booklets_backup_$(date +%Y%m%d).tar.gz \
  09_DESIGN_ASSETS/character_booklets/

# Copy to external drive
cp character_booklets_backup_*.tar.gz /path/to/external/drive/
```

---

## 🖨️ PRINTING RECOMMENDATIONS

### Home/Office Printer:

```
Settings:
├─ Paper: A4 cream/ivory cardstock (160-200g)
├─ Quality: High/Best
├─ Color: Full color
├─ Double-sided: Yes (if possible)
├─ Scale: 100% (do not scale to fit)
└─ Print: 2 A5 pages per A4 sheet, then cut
```

### Professional Print Shop:

Send them:
1. **File:** `CharacterName_Booklet_PRINT.pdf`
2. **Specs:**
   ```
   Format: A5 (148×210mm)
   Pages: 6 pages per booklet
   Quantity: 11 booklets (one per character)
   Paper: 160-200g cream/ivory cardstock
   Finish: Matte
   Binding: Saddle-stitch or perfect bound
   Color: Full color (CMYK)
   Bleed: 3mm (if file includes it)
   ```

---

## 🆘 TROUBLESHOOTING

### Problem: "Can't download PDF"
**Solution:** 
- Try PNG format instead
- Check Canva Pro subscription (PDF Print requires Pro)
- Use "Download" not "Share link"

### Problem: "File too large"
**Solution:**
- Use PNG instead of PDF for previews
- Compress PDF: Tools → Compress PDF
- Reduce image quality slightly in Canva

### Problem: "Colors look different when printed"
**Solution:**
- Screen (RGB) ≠ Print (CMYK) - expect slight variation
- Request color proof from print shop
- Test print one booklet first
- Adjust in Canva if needed

### Problem: "Text too small when printed"
**Solution:**
- Minimum 11pt for body text on A5
- Test print before doing all 11
- Increase font size in Canva
- Reduce content if necessary

---

## 📝 QUICK REFERENCE COMMANDS

```bash
# Create all character folders at once
mkdir -p 09_DESIGN_ASSETS/character_booklets/{01_JC_Mendes,02_Helena_Ashford,03_James_Harrods,04_Emilia_Harrods,05_Daisy_Valmont,06_Maria_Fletcher,07_Padre_Rui_Santos,08_Filipp_Moretti,09_Claire_Beaumont,10_Denise_Beaumont,11_Ricardo}

# Move PDF from Downloads to Filipp folder
mv ~/Downloads/Filipp_Moretti_Booklet_PRINT.pdf \
   09_DESIGN_ASSETS/character_booklets/08_Filipp_Moretti/

# List all booklet files
find 09_DESIGN_ASSETS/character_booklets/ -name "*_Booklet_*"

# Check file sizes
du -h 09_DESIGN_ASSETS/character_booklets/*/
```

---

## 🎯 NEXT STEPS AFTER EXPORT

1. ✅ Export Filipp Moretti design from Canva
2. ✅ Save PDF to `09_DESIGN_ASSETS/character_booklets/08_Filipp_Moretti/`
3. ✅ Save Canva link in text file
4. ✅ Test print ONE booklet first
5. ✅ Review quality (text size, colors, layout)
6. ✅ Adjust in Canva if needed
7. ✅ Create booklets for other 10 characters
8. ✅ Print all 11 booklets
9. ✅ Bind/assemble
10. ✅ Ready for game night! 🎭

---

**Questions?** Reference the main design guide at:  
`09_DESIGN_ASSETS/A5_CHARACTER_BOOKLET_DESIGN_GUIDE.md`
