#!/bin/bash

echo "Setting up Docusaurus"

# Create Docusaurus project in non-interactive mode
npx create-docusaurus@latest api-doc classic --use npm --skip-install

# Change directory
cd api-doc || exit

# Install dependencies
npm install

# Build the site
npm run build
