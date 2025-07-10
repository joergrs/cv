#!/bin/bash

# Build script for Jörg's CV website
# Converts Markdown to HTML using Pandoc

set -e  # Exit on any error

echo "Building website..."

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: Pandoc is not installed. Please install it first."
    echo "On Ubuntu/Debian: sudo apt-get install pandoc"
    echo "On macOS: brew install pandoc"
    echo "On Windows: choco install pandoc"
    exit 1
fi

# Create output directory if it doesn't exist
mkdir -p dist

# Convert Markdown to HTML using the custom template
pandoc \
    --template=template.html \
    --css=style.css \
    --metadata title="Dipl.-Ing. Jörg Schröter" \
    --metadata subtitle="software developer and engineer" \
    --metadata date="$(date +%Y)" \
    --standalone \
    --output=dist/index.html \
    index.md

# Copy CSS and favicon files to dist directory
cp style.css dist/
cp favicon.png dist/ 2>/dev/null || echo "Warning: favicon.png not found"
cp favicon.svg dist/ 2>/dev/null || echo "Warning: favicon.svg not found"

echo "Website built successfully!"
echo "Output files:"
echo "  - dist/index.html"
echo "  - dist/style.css"
echo "  - dist/favicon.png"
echo ""
echo "To view the website, open dist/index.html in your browser"
echo "Or serve it locally with: python3 -m http.server --directory dist"