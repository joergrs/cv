# Jörg's CV Website

A simple, professional website built with Pandoc to showcase skills and experience.

## Files

- `index.md` - Your content in Markdown format
- `template.html` - Custom HTML template for Pandoc
- `style.css` - Modern, responsive CSS styling
- `build.sh` - Build script to generate the website
- `dist/` - Output directory (created when building)

## Prerequisites

Install Pandoc on your system:

**Ubuntu/Debian:**
```bash
sudo apt-get install pandoc
```

**macOS:**
```bash
brew install pandoc
```

**Windows:**
```bash
choco install pandoc
```

## Usage

1. **Edit your content** in `index.md`
2. **Build the website:**
   ```bash
   ./build.sh
   ```
3. **View the result:**
   - Open `dist/index.html` in your browser
   - Or serve locally: `python3 -m http.server --directory dist`

## Customization

### Styling
Edit `style.css` to change colors, fonts, and layout. The current design features:
- Modern gradient header
- Clean typography with Inter font
- Responsive design for mobile devices
- Print-friendly styles

### Template
Modify `template.html` to change the HTML structure. The template includes:
- Dynamic title and subtitle from metadata
- Responsive viewport settings
- Google Fonts integration
- Footer with copyright and attribution

### Content Structure
The current `index.md` is structured with:
- Main heading (name and title)
- Skills sections (Programming Languages, Tools, etc.)
- Education section

You can add more sections like:
- Professional Experience
- Projects
- Contact Information
- Links to GitHub, LinkedIn, etc.

## Deployment

The generated `dist/` folder contains static files that can be deployed to any web hosting service:
- GitHub Pages
- Netlify
- Vercel
- Any traditional web hosting

## Features

- ✅ Responsive design
- ✅ Modern, professional styling
- ✅ Print-friendly
- ✅ Fast loading (no JavaScript required)
- ✅ SEO-friendly
- ✅ Easy to maintain and update