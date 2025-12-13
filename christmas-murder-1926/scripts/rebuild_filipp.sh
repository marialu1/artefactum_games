#!/bin/bash
# Quick rebuild script for Filipp

CHARACTER="08_Filipp_Moretti_Entrepreneur"

echo "🔄 Rebuilding Filipp quick sheet..."
python3 scripts/build_quick_sheet_typst.py "$CHARACTER"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build successful!"
    
    # Try to open PDF (OS-specific)
    PDF_PATH="02_CHARACTERS/$CHARACTER/${CHARACTER}_QUICK.pdf"
    
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        open "$PDF_PATH"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        xdg-open "$PDF_PATH" 2>/dev/null || echo "📄 PDF: $PDF_PATH"
    else
        echo "📄 PDF: $PDF_PATH"
    fi
else
    echo ""
    echo "❌ Build failed!"
    exit 1
fi
