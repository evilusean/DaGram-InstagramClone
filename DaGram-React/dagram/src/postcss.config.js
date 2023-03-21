// module.exports = {
//     plugins: [require('tailwindcss'), require('autoprefixer')]
// };

const path = require('path');

module.exports = {
  plugins: {
    tailwindcss: {
      config: path.join(__dirname, 'tailwind.config.js'),
    },
    autoprefixer: {},
  },
};