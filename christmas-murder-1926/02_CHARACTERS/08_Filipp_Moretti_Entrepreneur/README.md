# Filipp Moretti - Quick Sheet

**Character:** Filipp "Silver Fox" Moretti  
**Player:** [TBD]  
**Role:** Red Herring / Entrepreneur

---

## Files

- `filipp_quick.typ` - Typst source file (editable)
- `08_Filipp_Moretti_Entrepreneur_QUICK.pdf` - Compiled PDF booklet
- `snippets/` - Modular content pieces
- `covers/` - Front and back cover images

---

## Building

### Requirements
- Typst installed ([download](https://github.com/typst/typst/releases))
- Fonts: Crimson Text, Great Vibes, Lato
- Ornaments in `09_DESIGN_ASSETS/ornaments/`

### Build Command

```bash
# From project root:
python scripts/build_quick_sheet_typst.py 08_Filipp_Moretti_Entrepreneur

# Or use quick rebuild:
./scripts/rebuild_filipp.sh
```

### Manual Compilation

```bash
# From character directory:
typst compile filipp_quick.typ 08_Filipp_Moretti_Entrepreneur_QUICK.pdf
```

---

## Editing

1. Edit snippets in `snippets/` folder
2. Rebuild: `./scripts/rebuild_filipp.sh`
3. Review PDF
4. Iterate until perfect

---

## Printing

**Format:** A5 portrait (148×210mm)  
**Pages:** 6 pages  
**Binding:** Saddle-stitch (fold + staple center)

**Print instructions:**
1. Print pages 1-6 on 3 sheets of A4
2. Fold each sheet in half
3. Stack in order
4. Staple center spine

---

## Status

- [x] Content streamlined
- [x] Typst template created
- [x] Build scripts created
- [ ] Test PDF reviewed
- [ ] Final PDF approved
- [ ] Printed physical copy
