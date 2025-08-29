#!/bin/bash

set -e

# Progress function
show_progress() {
    local step=$1
    local total=6
    local percent=$((step * 100 / total))
    local bar_length=20
    local filled_length=$((percent * bar_length / 100))
    
    printf "\r["
    for ((i=0; i<filled_length; i++)); do printf "█"; done
    for ((i=filled_length; i<bar_length; i++)); do printf "░"; done
    printf "] %d%% (%d/%d)" $percent $step $total
}

echo "🚀 Publishing Claude Theme to VS Code Marketplace and Open VSX Registry"
echo "================================================================="

show_progress 0
sleep 0.5

if [ ! -f ".env" ]; then
    echo -e "❌ Error: .env file not found!"
    echo "Please copy .env.example to .env and fill in your Personal Access Tokens"
    exit 1
fi

source .env

if [ -z "$VSCE_PAT" ]; then
    echo -e "❌ Error: VSCE_PAT not set in .env file!"
    exit 1
fi

if [ -z "$OVSX_PAT" ]; then
    echo -e "❌ Error: OVSX_PAT not set in .env file!"
    exit 1
fi

show_progress 1
echo -e "📦 Installing dependencies..."
npm install > /dev/null 2>&1
echo

show_progress 2
VERSION=$(node -p "require('./package.json').version")
echo -e "📋 Current package version: $VERSION"
echo

show_progress 3
echo -e "🔨 Packaging extension..."
vsce package --out packages/ > /dev/null 2>&1
echo

show_progress 4
echo -e "📤 Publishing to VS Code Marketplace..."
vsce publish -p $VSCE_PAT
echo

show_progress 5
echo -e "📤 Publishing to Open VSX Registry..."
ovsx publish packages/jnahian-claude-theme-$VERSION.vsix -p $OVSX_PAT
echo

show_progress 6
echo -e "✅ Successfully published to both marketplaces!"
echo "🎉 Claude Theme is now available on:"
echo "   • VS Code Marketplace: https://marketplace.visualstudio.com/items?itemName=jnahian.jnahian-claude-theme"
echo "   • Open VSX Registry: https://open-vsx.org/extension/jnahian/jnahian-claude-theme"