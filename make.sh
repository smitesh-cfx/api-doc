#!/bin/bash

echo "Setting up Docusaurus"

# Initialize Docusaurus in the current directory
npx create-docusaurus@latest . classic --skip-install

# Install dependencies
npm install

# Build the site
npm run build
