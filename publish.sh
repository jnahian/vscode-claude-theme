#!/bin/bash

set -e

echo "🚀 Publishing Claude Theme to VS Code Marketplace and Open VSX Registry"
echo "================================================================="

if [ ! -f ".env" ]; then
    echo "❌ Error: .env file not found!"
    echo "Please copy .env.example to .env and fill in your Personal Access Tokens"
    exit 1
fi

source .env

if [ -z "$VSCE_PAT" ]; then
    echo "❌ Error: VSCE_PAT not set in .env file!"
    exit 1
fi

if [ -z "$OVSX_PAT" ]; then
    echo "❌ Error: OVSX_PAT not set in .env file!"
    exit 1
fi

echo "📦 Installing dependencies..."
npm install

VERSION=$(node -p "require('./package.json').version")
echo "📋 Current package version: $VERSION"

echo "🔨 Packaging extension..."
vsce package --out packages/

echo "📤 Publishing to VS Code Marketplace..."
vsce publish -p $VSCE_PAT

echo "📤 Publishing to Open VSX Registry..."
ovsx publish packages/jnahian-claude-theme-$VERSION.vsix -p $OVSX_PAT

echo "✅ Successfully published to both marketplaces!"
echo "🎉 Claude Theme is now available on:"
echo "   • VS Code Marketplace: https://marketplace.visualstudio.com/items?itemName=jnahian.jnahian-claude-theme"
echo "   • Open VSX Registry: https://open-vsx.org/extension/jnahian/jnahian-claude-theme"