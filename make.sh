#!/bin/bash

set -e  # Exit if a command fails

echo "Installing dependencies..."
npm install

echo "Generating API documentation from OpenAPI JSON..."
npm run docusaurus openapi:generate

echo "Building Docusaurus site..."
npm run build

echo "Build complete!"
