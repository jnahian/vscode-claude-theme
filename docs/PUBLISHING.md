# Publishing Plan for VS Code Claude Theme

## Overview
This document outlines the setup for publishing the Claude Theme extension to both VS Code Marketplace and Open VSX Registry using environment variables for secure PAT management.

## Setup Complete

### 1. Environment Variables
- Created `.env` file for storing Personal Access Tokens (PATs)
- Created `.env.example` as template
- Updated `.gitignore` to exclude `.env` file

### 2. Publishing Script
- `publish.sh`: Bash script that publishes to both marketplaces
- `package.json` publish script now uses the bash script

### 3. Dependencies
- Added `ovsx` dependency for Open VSX Registry publishing
- Existing `vsce` dependency for VS Code Marketplace

## Usage Instructions

### 1. Get Personal Access Tokens
- **VS Code Marketplace**: Get PAT from [Azure DevOps](https://dev.azure.com/)
- **Open VSX Registry**: Get PAT from [Eclipse Open VSX](https://open-vsx.org/)

### 2. Configure Environment
1. Copy `.env.example` to `.env`
2. Fill in your PATs:
   ```
   VSCE_PAT=your_actual_vscode_pat
   OVSX_PAT=your_actual_ovsx_pat
   ```

### 3. Publish Commands
```bash
# Publish to both marketplaces (using bash script)
npm run publish

# Or run the bash script directly
./publish.sh
```

### 4. Prerequisites
- Ensure extension is packaged: `npm run package`
- Install dependencies: `npm install`
- Load environment variables before publishing

## Security Notes
- Never commit `.env` file to version control
- Keep PATs secure and rotate them regularly
- Use `.env.example` for documentation only