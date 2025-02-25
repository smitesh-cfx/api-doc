#!/bin/bash

echo "Starting build process..."

# Install dependencies
npm install

# Build the Docusaurus site
npm run build

# Move OpenAPI JSON to static folder (if not already there)
mkdir -p static
cp openapi.json static/

# Done
echo "Build completed successfully!"
