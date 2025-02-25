#!/bin/bash

echo "Generating Swagger UI documentation..."

# Create a directory for Swagger UI if it doesn't exist
mkdir -p swagger-ui

# Download Swagger UI if not already present
if [ ! -d "swagger-ui/dist" ]; then
    curl -L https://github.com/swagger-api/swagger-ui/archive/refs/tags/v5.11.0.tar.gz | tar xz
    mv swagger-ui-5.11.0/dist swagger-ui
    rm -rf swagger-ui-5.11.0
fi

# Copy OpenAPI spec
cp openapi.json swagger-ui/openapi.json

# Generate an index.html that loads the OpenAPI spec
cat > swagger-ui/index.html <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>API Documentation</title>
    <link rel="stylesheet" href="swagger-ui/swagger-ui.css">
</head>
<body>
    <div id="swagger-ui"></div>
    <script src="swagger-ui/swagger-ui-bundle.js"></script>
    <script src="swagger-ui/swagger-ui-standalone-preset.js"></script>
    <script>
        window.onload = function() {
            const ui = SwaggerUIBundle({
                url: "openapi.json",
                dom_id: '#swagger-ui',
                presets: [SwaggerUIBundle.presets.apis, SwaggerUIStandalonePreset],
                layout: "StandaloneLayout"
            });
        }
    </script>
</body>
</html>
EOL

echo "Swagger UI setup complete!"
