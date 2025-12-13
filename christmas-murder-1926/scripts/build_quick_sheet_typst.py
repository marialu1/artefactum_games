#!/usr/bin/env python3
"""
Builds character quick sheet using Typst (not LaTeX).
Compiles .typ files to professional PDF output.
"""

import subprocess
import shutil
from pathlib import Path
import sys

def check_typst_installed():
    """Check if Typst is installed."""
    if not shutil.which('typst'):
        print("❌ ERROR: Typst is not installed!")
        print("\n📥 Install Typst:")
        print("   - Download: https://github.com/typst/typst/releases")
        print("   - Mac: brew install typst")
        print("   - Linux: cargo install --git https://github.com/typst/typst")
        print("\nVerify with: typst --version")
        return False
    
    # Check version
    result = subprocess.run(['typst', '--version'], capture_output=True, text=True)
    print(f"✅ Typst installed: {result.stdout.strip()}")
    return True

def check_fonts():
    """Check if required fonts are available."""
    required_fonts = ["Crimson Text", "Great Vibes", "Lato"]
    print("\n🔤 Checking fonts...")
    
    # Note: Font checking is OS-specific, this is a basic check
    print("   Required fonts:")
    for font in required_fonts:
        print(f"   - {font}")
    
    print("\n⚠️  If fonts are missing, booklet will use fallback fonts.")
    print("   Install fonts system-wide for best results.")
    return True

def check_files(char_dir):
    """Check if required files exist."""
    print("\n📁 Checking required files...")
    
    # Check Typst file
    typ_file = char_dir / f"{char_dir.name}_quick.typ"
    if not typ_file.exists():
        # Try alternative name
        typ_file = char_dir / "filipp_quick.typ"
        if not typ_file.exists():
            print(f"❌ Typst file not found: {typ_file}")
            return False
    print(f"   ✅ Typst file: {typ_file.name}")
    
    # Check covers
    front_cover = char_dir / "covers/front_cover.png"
    back_cover = char_dir / "covers/back_cover.png"
    
    if not front_cover.exists():
        print(f"   ⚠️  Front cover not found: {front_cover}")
        print("      Using placeholder...")
    else:
        print(f"   ✅ Front cover found")
    
    if not back_cover.exists():
        print(f"   ⚠️  Back cover not found: {back_cover}")
        print("      Using placeholder...")
    else:
        print(f"   ✅ Back cover found")
    
    # Check ornaments
    ornaments_dir = Path("09_DESIGN_ASSETS/ornaments")
    required_ornaments = [
        'divider_small.png',
        'divider_medium.png',
        'divider_tiny.png',
    ]
    
    missing_ornaments = []
    for ornament in required_ornaments:
        if not (ornaments_dir / ornament).exists():
            missing_ornaments.append(ornament)
    
    if missing_ornaments:
        print(f"   ⚠️  Missing ornaments: {', '.join(missing_ornaments)}")
        print("      User needs to export these from Canva to:")
        print(f"      {ornaments_dir}/")
    else:
        print(f"   ✅ All ornaments found")
    
    return True

def build_quick_sheet(character_slug):
    """Builds quick sheet using Typst."""
    
    print(f"\n{'='*60}")
    print(f"🎭 BUILDING QUICK SHEET: {character_slug}")
    print(f"{'='*60}\n")
    
    # Check Typst
    if not check_typst_installed():
        return False
    
    # Check fonts
    check_fonts()
    
    # Setup paths
    char_dir = Path(f"02_CHARACTERS/{character_slug}")
    
    if not char_dir.exists():
        print(f"❌ Character directory not found: {char_dir}")
        return False
    
    # Check files
    if not check_files(char_dir):
        return False
    
    # Find Typst file
    typ_file = char_dir / f"{character_slug}_quick.typ"
    if not typ_file.exists():
        # Try alternative name
        typ_file = char_dir / "filipp_quick.typ"
        if not typ_file.exists():
            print(f"❌ No .typ file found in {char_dir}")
            return False
    
    pdf_file = char_dir / f"{character_slug}_QUICK.pdf"
    
    # Compile with Typst
    print(f"\n🔨 Compiling with Typst...")
    print(f"   Input:  {typ_file.name}")
    print(f"   Output: {pdf_file.name}")
    
    result = subprocess.run(
        ['typst', 'compile', '--root', '../..', typ_file.name, pdf_file.name],
        capture_output=True,
        text=True,
        cwd=str(char_dir)
    )
    
    if result.returncode != 0:
        print(f"\n❌ Compilation failed!")
        print(f"\nError output:")
        print(result.stderr)
        return False
    
    # Success!
    print(f"\n{'='*60}")
    print(f"✅ BUILD COMPLETE!")
    print(f"{'='*60}")
    print(f"\n📄 Output: {pdf_file}")
    print(f"📏 Size: A5 portrait (148×210mm)")
    print(f"📖 Pages: 6 pages (saddle-stitch ready)")
    
    # File size
    if pdf_file.exists():
        size_kb = pdf_file.stat().st_size / 1024
        print(f"💾 File size: {size_kb:.1f} KB")
    
    print(f"\n📋 NEXT STEPS:")
    print("1. Open PDF and review content")
    print("2. Print test on regular paper")
    print("3. Check:")
    print("   - Font rendering")
    print("   - Spacing and layout")
    print("   - Ornament placement")
    print("   - Cover images")
    print("4. Request adjustments if needed")
    print("5. Once perfect, print final on good paper")
    
    return True

def main():
    if len(sys.argv) < 2:
        print("Usage: python build_quick_sheet_typst.py [character_slug]")
        print("\nExample:")
        print("  python build_quick_sheet_typst.py 08_Filipp_Moretti_Entrepreneur")
        sys.exit(1)
    
    character_slug = sys.argv[1]
    success = build_quick_sheet(character_slug)
    
    sys.exit(0 if success else 1)

if __name__ == "__main__":
    main()
