#!/bin/bash

# Bulk Character Name Update Script
# This script performs all 5 name changes across the project

echo "🔄 Starting bulk character name replacements..."
echo ""

# Function to perform replacements on all markdown, yaml, and typst files
perform_replacements() {
    local search="$1"
    local replace="$2"
    local description="$3"
    
    echo "📝 Replacing: $description"
    
    # Find all .md, .yaml, and .typ files and perform replacement
    find . -type f \( -name "*.md" -o -name "*.yaml" -o -name "*.typ" \) \
        -not -path "./.git/*" \
        -not -path "./10_ARCHIVE/*" \
        -exec sed -i "s/${search}/${replace}/g" {} +
    
    echo "   ✅ Complete"
}

# 1. JC Mendes → John Alfred Jones
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
perform_replacements "João Carlos Mendes" "John Alfred Jones" "João Carlos Mendes → John Alfred Jones"
perform_replacements "J\.C\. Mendes" "John Alfred Jones" "J.C. Mendes → John Alfred Jones"
perform_replacements "JC Mendes" "John Alfred Jones" "JC Mendes → John Alfred Jones"

# 2. Daisy Valmont → Daisy Vermont
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
perform_replacements "Daisy Valmont" "Daisy Vermont" "Daisy Valmont → Daisy Vermont"

# 3. Padre Rui Santos → Father Juan Carlos
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
perform_replacements "Padre Rui Santos" "Father Juan Carlos" "Padre Rui Santos → Father Juan Carlos"
perform_replacements "Padre Santos" "Father Carlos" "Padre Santos → Father Carlos"
perform_replacements "Padre Rui" "Father Juan" "Padre Rui → Father Juan"

# 4. Inês/Ines Beaumont → Claire Beaumont
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
perform_replacements "Inês Beaumont" "Claire Beaumont" "Inês Beaumont → Claire Beaumont"
perform_replacements "Ines Beaumont" "Claire Beaumont" "Ines Beaumont → Claire Beaumont"
perform_replacements "Inês" "Claire" "Inês → Claire (standalone)"
perform_replacements "Ines" "Claire" "Ines → Claire (standalone)"

# 5. Denise Beaumont → Esmeralda Beaumont
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
perform_replacements "Denise Beaumont" "Esmeralda Beaumont" "Denise Beaumont → Esmeralda Beaumont"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ All name replacements complete!"
echo ""
echo "📊 Summary of changes:"
git diff --stat

echo ""
echo "💡 To review changes: git diff"
echo "💡 To undo changes: git reset --hard HEAD"
echo "💡 To commit changes: git add -A && git commit -m 'Character name updates'"
