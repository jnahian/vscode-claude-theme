# Changelog

All notable changes to the Claude Theme will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.2] - 2025-08-20

### Added
- **Project Structure**: Reorganized files into logical folders
  - Moved documentation to `docs/` folder (PLAN.md, TODO.md)
  - Moved .vsix packages to `packages/` folder
  - Updated README with project structure overview
- **React/JSX Support**: Enhanced syntax highlighting for React components
  - Better text content colors in JSX (blackish in light mode, whitish in dark mode)
  - Improved component name highlighting with Claude's primary color
  - Support for TypeScript JSX (.tsx files)

### Changed
- **Build Process**: Updated package generation to output to `packages/` folder
- **Documentation**: Added comprehensive project structure section to README
- **npm Scripts**: Updated package script to use new folder structure

## [0.1.1] - 2025-08-20

### Fixed
- **Light Theme Visibility**: Replaced hard-to-see yellow color (#ffd33d) with Claude's primary color (#C15F3C)
  - Updated terminal yellow color for better contrast
  - Fixed Git conflict decoration color
  - Improved syntax highlighting visibility for:
    - Class names and support types
    - HTML attributes
    - CSS classes
    - JSON keys (level 1)
    - Markdown link anchors

## [0.1.0] - 2025-08-20

### Added
- Initial release of Claude Theme
- **Claude Light** theme variant
  - Warm rust-orange (#C15F3C) primary color based on Claude's brand
  - Off-white backgrounds with subtle warm undertones
  - Complete syntax highlighting for major programming languages
  - Professional UI theming across all VS Code panels
  - Git integration colors for version control workflow
  - Terminal color scheme matching theme aesthetic
- **Claude Dark** theme variant
  - Dark adaptation maintaining Claude's warm color philosophy
  - Rich dark brown backgrounds with orange accents
  - High contrast syntax highlighting optimized for dark mode
  - Consistent UI theming with light variant
  - Enhanced terminal colors for dark environment
- **Font Recommendations**
  - Serif font configuration in package.json
  - Recommended font stack: ui-serif, Georgia, Cambria, Times New Roman
  - Documentation for premium font options (Tiempos, Styrene)
- **Language Support**
  - JavaScript/TypeScript with modern syntax features
  - Python with proper keyword and function highlighting
  - HTML/CSS with semantic element recognition
  - JSON with hierarchical key coloring
  - Markdown with rich formatting support
  - And many more programming languages
- **Documentation**
  - Comprehensive README with installation instructions
  - Color palette reference guide
  - Configuration recommendations
  - Contributing guidelines
- **Theme Features**
  - Bracket pair matching with themed colors
  - Search highlighting with brand colors
  - Selection highlighting with proper opacity
  - Error and warning indicators
  - Breadcrumb navigation theming
  - Peek view and notification styling

### Technical Details
- VS Code engine compatibility: ^1.74.0
- Theme type: Complete color theme with UI and syntax highlighting
- File structure: Separate JSON files for light and dark variants
- Color accessibility: Carefully chosen contrast ratios
- Extension size: Optimized for fast loading

---

## How to Read This Changelog

- **Added** for new features
- **Changed** for changes in existing functionality  
- **Deprecated** for soon-to-be removed features
- **Removed** for now removed features
- **Fixed** for any bug fixes
- **Security** in case of vulnerabilities