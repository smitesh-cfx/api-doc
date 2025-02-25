#!/bin/bash

echo "Getting started"

# Generate Redoc HTML file
npx redoc-cli bundle openapi.json && \
mv redoc-static.html index.html && \
echo "Changed name from redoc-static.html to index.html" && \

# Inject custom CSS
sed -i '6 i \ \ <link rel="stylesheet" type="text/css" href="styles.css"/>' index.html && \

# Add favicon
sed -i '7 i \ \ <link rel="icon" type="image/png" href="images/favicon.png"/>' index.html && \

echo -e "\nDone!"
