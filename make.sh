#!/bin/bash
echo "Setting up Docusaurus"
npx create-docusaurus@latest api-doc classic
cd api-doc
npm install
npm run build
