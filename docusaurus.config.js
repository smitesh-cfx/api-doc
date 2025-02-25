module.exports = {
  title: "My API Docs",
  url: "https://<your-github-username>.github.io",
  baseUrl: "/<your-repo-name>/",
  presets: [
    [
      "classic",
      {
        docs: {
          sidebarPath: require.resolve("./sidebars.js"),
        },
        theme: {
          customCss: require.resolve("./src/css/custom.css"),
        },
      },
    ],
  ],
  plugins: [
    [
      "docusaurus-plugin-openapi-docs",
      {
        id: "openapi",
        docsPluginId: "classic",
        config: {
          myApi: {
            specPath: "static/openapi.json", // Path to OpenAPI JSON file
            outputDir: "docs/api", // Where generated docs will be stored
          },
        },
      },
    ],
  ],
  themes: ["@docusaurus/theme-mermaid"],
};
