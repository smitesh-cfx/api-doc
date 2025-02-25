module.exports = {
  title: 'API Documentation',
  tagline: 'API docs using Docusaurus',
  url: 'https://your-github-username.github.io',
  baseUrl: '/api-docs/', // Adjust this for GitHub Pages
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'your-github-username',
  projectName: 'api-docs',
  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
        },
        blog: false,
      },
    ],
  ],
  plugins: [
    [
      'docusaurus-plugin-redoc',
      {
        spec: 'static/openapi.json',
        route: '/api-docs',
      },
    ],
  ],
};
