#!/bin/bash
# Script to update repository statistics in README.md

# Run make stats and capture output
stats_output=$(make stats 2>/dev/null | grep -E '^📁|^📊 TOTAL')

if [ -z "$stats_output" ]; then
    echo "⚠️  Failed to generate statistics"
    exit 1
fi

# Get current date
current_date=$(date +"%B %d, %Y")

# Use awk to update the README
awk -v stats="$stats_output" -v date="$current_date" '
BEGIN { in_stats=0 }
{
    # Print line unless we are in stats block
    if (!in_stats) {
        print
    }
    
    # Detect start of stats code block (opening backticks followed by 📁)
    if ($0 == "```") {
        getline next_line
        if (next_line ~ /^📁/) {
            # We are in stats block - print new stats
            in_stats=1
            print stats
            # Skip until closing backticks
            while (getline > 0) {
                if ($0 == "```") {
                    print "```"
                    in_stats=0
                    break
                }
            }
        } else {
            # Not stats block, print the next line we read
            print next_line
        }
    }
    
    # Update date line
    if ($0 ~ /^\*Stats as of:/) {
        print "*Stats as of: " date "*"
        next
    }
}
' README.md > README.md.tmp

# Replace README with updated version
mv README.md.tmp README.md

echo "✅ Statistics updated in README.md"
