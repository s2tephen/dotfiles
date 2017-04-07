const bgColor     = 'rgb(43,48,59)';
const textColor   = 'rgb(167,173,186)';
const linkColor   = 'rgb(180,142,173)';
const selectColor = 'rgb(143,161,179)';

const rgba = (color, alpha) => `rgba${color.slice(3, -1)},${alpha})`;

module.exports = {
  config: {
    // overlay settings
    overlay: {
      animate: false,
      hasShadow: true,
      startAlone: true
    },

    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"Fira Code", Menlo, monospace',

    // terminal cursor background color (hex)
    cursorColor: textColor,

    // color of the text
    foregroundColor: textColor,

    // terminal background color
    backgroundColor: bgColor,

    // border color (window, tabs)
    borderColor: bgColor,

    // custom css to embed in the main window
    css: ``,

    // custom css to embed in the terminal window
    termCSS: `
      x-screen a,
      x-screen x-row span[style*="text-decoration: underline;"] {
        color: ${textColor};
        text-decoration: none !important;
        background-image: linear-gradient(to bottom, ${rgba(textColor,.6)} 50%, ${rgba(textColor,0)} 50%);
        background-repeat: repeat-x;
        background-size: 2px .1em;
        background-position: 0 1.07em;
        transition: color 0.15s ease-in-out;
      }

      x-screen a:hover {
        color: ${linkColor};
        text-decoration: none;
      }

      x-screen a::selection,
      x-screen x-row span::selection {
        background: ${selectColor};
      }

      x-screen x-row {
        font-variant-ligatures: contextual;
      }

      x-screen .unicode-node {
        display: inline;
      }
    `,

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#000000',
      '#ff0000',
      '#33ff00',
      '#ffff00',
      '#0066ff',
      '#cc00ff',
      '#00ffff',
      '#d0d0d0',
      '#808080',
      '#ff0000',
      '#33ff00',
      '#ffff00',
      '#0066ff',
      '#cc00ff',
      '#00ffff',
      '#ffffff'
    ],

    // use zsh instead of bash
    shell: '/bin/zsh',

    // open new windows in full screen
    windowSize: [1440, 878]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hyperterm-base16-ocean',
    'hyperterm-blink',
    'hyperlinks',
    'hyperterm-1password',
    'hyper-autohide-tabs',
    'hyper-simple-highlight-active-session',
    'hyperterm-alternatescroll',
    'hyperterm-themed-scrollbar',
    'hyper-statusline',
    'hyperterm-overlay'
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [
  ]
};
