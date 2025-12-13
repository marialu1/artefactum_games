# Makefile for Christmas Murder Dinner 1926 Project
# For automation of common tasks

.PHONY: help ingest ingest-compact clean pdf pdf-helena pdf-all-chars check-pandoc video-assets video-status video-setup stats

# Default target - show available commands
help:
	@echo "🎭 Christmas Murder Dinner 1926 - Makefile Commands"
	@echo ""
	@echo "Available commands:"
	@echo "  make ingest         - Create FULL digest of the repository for LLMs"
	@echo "  make ingest-compact - Create COMPACT digest (critical info only)"
	@echo "  make pdf-helena     - Convert Helena dossier to PDF"
	@echo "  make pdf-all-chars  - Convert all character notes to PDFs"
	@echo "  make pdf            - Convert all Markdown docs to PDFs"
	@echo "  make video-setup    - Install video asset dependencies"
	@echo "  make video-assets   - Launch interactive video asset manager"
	@echo "  make video-status   - Quick view of video asset generation status"
	@echo "  make stats          - Show repository statistics by folder"
	@echo "  make clean          - Remove generated files (digests & PDFs)"
	@echo "  make help           - Show this help message"
	@echo ""
	@echo "📝 Requirements:"
	@echo "  - gitingest: pip install gitingest"
	@echo "  - pandoc: apt install pandoc (or brew install pandoc on macOS)"
	@echo "  - texlive-xetex: apt install texlive-xetex (for PDF generation)"
	@echo "  - huggingface-hub: pip install huggingface-hub PyYAML (for video assets)"

# Generate FULL repository digest using gitingest
ingest:
	@echo "🔍 Creating FULL repository digest..."
	@if command -v gitingest &> /dev/null; then \
		gitingest . --output digest.txt; \
	elif [ -f ~/.local/bin/gitingest ]; then \
		~/.local/bin/gitingest . --output digest.txt; \
	else \
		echo "❌ Error: gitingest is not installed"; \
		echo "   Install with: pip install gitingest"; \
		exit 1; \
	fi
	@echo "✅ Full digest created: digest.txt"
	@echo "📊 You can now share this file with LLMs!"

# Generate COMPACT digest (critical info only)
ingest-compact:
	@echo "🔍 Creating COMPACT repository digest..."
	@echo "# Mystery Crime Party - Christmas Murder Dinner 1926" > digest-compact.txt
	@echo "# COMPACT DIGEST - Critical Info & Organization Only" >> digest-compact.txt
	@echo "" >> digest-compact.txt
	@echo "## Project Structure" >> digest-compact.txt
	@echo '```' >> digest-compact.txt
	@tree -L 2 -I 'node_modules|*.pyc|__pycache__|.git' . >> digest-compact.txt 2>/dev/null || find . -maxdepth 2 -type d -not -path '*/\.*' | sed 's|^\./||' | sort >> digest-compact.txt
	@echo '```' >> digest-compact.txt
	@echo "" >> digest-compact.txt
	@echo "## Critical Documents" >> digest-compact.txt
	@echo "" >> digest-compact.txt
	@for doc in README.md 00_PROJECT_DOCS/README.md 00_PROJECT_DOCS/MEMORY_BANK.md 00_PROJECT_DOCS/QUICK_START_GUIDE.md; do \
		if [ -f "$$doc" ]; then \
			echo "### $$doc" >> digest-compact.txt; \
			echo '```markdown' >> digest-compact.txt; \
			cat "$$doc" >> digest-compact.txt; \
			echo '```' >> digest-compact.txt; \
			echo "" >> digest-compact.txt; \
		fi \
	done
	@echo "## Character List" >> digest-compact.txt
	@echo "" >> digest-compact.txt
	@if [ -f "00_PROJECT_DOCS/CHARACTER_PLAYER_MAPPING.md" ]; then \
		echo '```markdown' >> digest-compact.txt; \
		cat "00_PROJECT_DOCS/CHARACTER_PLAYER_MAPPING.md" >> digest-compact.txt; \
		echo '```' >> digest-compact.txt; \
		echo "" >> digest-compact.txt; \
	fi
	@echo "## Project Checklist" >> digest-compact.txt
	@echo "" >> digest-compact.txt
	@if [ -f "00_PROJECT_DOCS/MASTER_CHECKLIST.md" ]; then \
		echo '```markdown' >> digest-compact.txt; \
		head -n 100 "00_PROJECT_DOCS/MASTER_CHECKLIST.md" >> digest-compact.txt; \
		echo '```' >> digest-compact.txt; \
		echo "" >> digest-compact.txt; \
	fi
	@wc -w digest-compact.txt | awk '{print "✅ Compact digest created: digest-compact.txt (" $$1 " words)"}'
	@echo "📊 Compact digest is ready for LLMs!"

# Check if Pandoc is installed
check-pandoc:
	@command -v pandoc > /dev/null 2>&1 || { \
		echo "❌ Error: pandoc is not installed"; \
		echo "   Install with:"; \
		echo "   - Ubuntu/Debian: sudo apt install pandoc texlive-xetex"; \
		echo "   - macOS: brew install pandoc basictex"; \
		exit 1; \
	}

# Convert Helena Complete Dossier to PDF
pdf-helena: check-pandoc
	@echo "📄 Converting Helena Complete Dossier to PDF..."
	@pandoc 04_GAME_MASTER_MATERIALS/helena_master_script/HELENA_COMPLETE_DOSSIER.md \
		-o 04_GAME_MASTER_MATERIALS/helena_master_script/HELENA_COMPLETE_DOSSIER.pdf \
		--pdf-engine=xelatex \
		-V geometry:margin=1in \
		-V fontsize=10pt \
		--toc \
		--toc-depth=2 \
		-V colorlinks=true \
		-V linkcolor=blue \
		-V urlcolor=blue \
		-V toccolor=black
	@echo "✅ PDF created: 04_GAME_MASTER_MATERIALS/helena_master_script/HELENA_COMPLETE_DOSSIER.pdf"

# Convert all character notes to PDFs
pdf-all-chars: check-pandoc
	@echo "📚 Converting all character notes to PDFs..."
	@for dir in 02_CHARACTERS/*/; do \
		if [ -f "$$dir/notes.md" ] && [ -s "$$dir/notes.md" ]; then \
			basename=$$(basename "$$dir"); \
			echo "  → Converting $$basename..."; \
			pandoc "$$dir/notes.md" \
				-o "$$dir/notes.pdf" \
				--pdf-engine=xelatex \
				-V geometry:margin=1in \
				-V fontsize=11pt \
				-V colorlinks=true; \
		fi \
	done
	@echo "✅ All character PDFs created!"

# Convert all major Markdown documents to PDFs
pdf: pdf-helena pdf-all-chars
	@echo "📖 Converting additional documents..."
	@if [ -f "00_PROJECT_DOCS/CHARACTER_ANALYSIS_COMPLETE.md" ]; then \
		pandoc 00_PROJECT_DOCS/CHARACTER_ANALYSIS_COMPLETE.md \
			-o 00_PROJECT_DOCS/CHARACTER_ANALYSIS_COMPLETE.pdf \
			--pdf-engine=xelatex \
			-V geometry:margin=1in; \
		echo "  ✅ CHARACTER_ANALYSIS_COMPLETE.pdf"; \
	fi
	@echo "🎉 All PDFs generated successfully!"

# Video Asset Manager Commands

# Setup video asset dependencies
video-setup:
	@echo "🎬 Setting up video asset generation dependencies..."
	@pip install --user huggingface-hub PyYAML
	@chmod +x 05_PROMOTIONAL_VIDEO/video_asset_manager.py
	@chmod +x 05_PROMOTIONAL_VIDEO/hf_generator.py
	@echo "✅ Video asset tools ready!"
	@echo ""
	@echo "📝 Next steps:"
	@echo "  1. Set your HF token: export HF_TOKEN='your_token_here'"
	@echo "  2. Run: make video-assets"

# Launch interactive video asset manager
video-assets:
	@cd 05_PROMOTIONAL_VIDEO && python3 video_asset_manager.py

# Quick status view
video-status:
	@cd 05_PROMOTIONAL_VIDEO && python3 video_asset_manager.py --status-only

# Repository statistics by folder
stats:
	@echo "📊 Repository Statistics - Christmas Murder Dinner 1926"
	@echo "================================================================"
	@echo ""
	@total_lines=0; \
	total_words=0; \
	for dir in 00_PROJECT_DOCS 01_CORE_NARRATIVE 02_CHARACTERS 03_UNIVERSAL_MATERIALS 04_GAME_MASTER_MATERIALS 06_PROPS_AND_PHYSICAL 07_FOOD_AND_LOGISTICS 08_REFERENCE_AND_RESEARCH 09_DESIGN_ASSETS scripts; do \
		if [ -d "$$dir" ]; then \
			lines=$$(find "$$dir" -type f \( -name "*.md" -o -name "*.py" -o -name "*.sh" -o -name "*.typ" -o -name "*.yaml" -o -name "*.yml" -o -name "*.txt" \) -not -path "*/\.*" -not -name "digest*.txt" 2>/dev/null | xargs wc -l 2>/dev/null | tail -1 | awk '{print $$1}' || echo "0"); \
			words=$$(find "$$dir" -type f \( -name "*.md" -o -name "*.py" -o -name "*.sh" -o -name "*.typ" -o -name "*.yaml" -o -name "*.yml" -o -name "*.txt" \) -not -path "*/\.*" -not -name "digest*.txt" 2>/dev/null | xargs wc -w 2>/dev/null | tail -1 | awk '{print $$1}' || echo "0"); \
			files=$$(find "$$dir" -type f \( -name "*.md" -o -name "*.py" -o -name "*.sh" -o -name "*.typ" -o -name "*.yaml" -o -name "*.yml" -o -name "*.txt" \) -not -path "*/\.*" -not -name "digest*.txt" 2>/dev/null | wc -l); \
			printf "📁 %-35s Files: %4d  Lines: %7s  Words: %8s\n" "$$dir/" "$$files" "$$lines" "$$words"; \
			total_lines=$$((total_lines + lines)); \
			total_words=$$((total_words + words)); \
		fi \
	done; \
	echo ""; \
	echo "================================================================"; \
	printf "📊 %-35s Lines: %7s  Words: %8s\n" "TOTAL" "$$total_lines" "$$total_words"; \
	echo ""

# Clean up generated files
clean:
	@echo "🧹 Cleaning up generated files..."
	@rm -f digest.txt
	@find . -name "*.pdf" -type f -not -path "*/node_modules/*" -delete
	@echo "✅ Clean complete! (removed digest.txt and all PDFs)"
