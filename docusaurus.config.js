module.exports = {
  title: 'API Documentation',
  tagline: 'API docs using Docusaurus',
  url: 'https://smitesh-cfx.github.io', // Change to your GitHub Pages URL
  baseUrl: '/api-docs/', // Ensure this matches your GitHub repo name
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'smitesh-cfx', // Your GitHub username
  projectName: 'api-docs', // Your repo name

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
  
  // ✅ Remove Redoc if you want Swagger UI
  plugins: [],
};
