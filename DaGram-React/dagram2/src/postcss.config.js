// module.exports = {
//     plugins: [require('tailwindcss'), require('autoprefixer')]
// };

// module.exports = {
//     plugins: {
//         content: [
//         "./index/html",
//         "./src/**/*.{vue,js,ts,jsx,tsx}",
//     ],
//     theme: {
//       extend: {},
//     },
//     plugins: [
//         require('tailwindcss'),
//     ],
//   },
//   autoprefixer: {},
// }

/* postcss.config.js */
const path = require('path');

module.exports = {
  plugins: {
    tailwindcss: {
      config: path.join(__dirname, 'tailwind.config.js'),
    },
    autoprefixer: {},
  },
};