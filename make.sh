#!/bin/bash

echo "Setting up Docusaurus"

# Check if Docusaurus is already initialized
if [ ! -f "package.json" ]; then
  echo "Docusaurus project not found, initializing..."
  npx create-docusaurus@latest . classic --skip-install
fi

# Install dependencies
npm install

# Build the site
npm run build
