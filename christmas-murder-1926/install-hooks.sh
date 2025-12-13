#!/bin/bash
# Install git hooks for this project

echo "📦 Installing git hooks..."

# Create hooks directory if it doesn't exist
mkdir -p .git/hooks

# Install pre-commit hook
cat > .git/hooks/pre-commit << 'EOF'
#!/bin/bash
# Pre-commit hook to automatically generate repository digest

echo "🔍 Pre-commit hook: Generating repository digest..."

# Run make ingest
if make ingest > /dev/null 2>&1; then
    echo "✅ Digest updated successfully"
else
    echo "⚠️  Warning: Failed to generate digest (continuing with commit)"
fi

# Exit successfully (don't block commit even if ingest fails)
exit 0
EOF

# Make the hook executable
chmod +x .git/hooks/pre-commit

echo "✅ Git hooks installed successfully!"
echo ""
echo "The pre-commit hook will automatically run 'make ingest' before each commit."
