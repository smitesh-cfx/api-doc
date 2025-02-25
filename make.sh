#!/bin/bash

set -e  # Exit if a command fails

if [ ! -f "package.json" ]; then
  echo "Error: package.json not found. Are you in the correct directory?"
  exit 1
fi

echo "Installing dependencies..."
npm install

echo "Generating API documentation from OpenAPI JSON..."
npm run docusaurus openapi:generate

echo "Building Docusaurus site..."
npm run build

echo "Build complete!"
