#!/bin/bash

echo "Setting up Docusaurus"

# Check if Docusaurus is already initialized
if [ ! -f "package.json" ]; then
  echo "Docusaurus project not found! Make sure it's initialized."
  exit 1
fi

# Install dependencies
npm install

# Build the site
npm run build
