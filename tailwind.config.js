module.exports = {
  purge: {
    content: [
      "./app/views/**/*.html.erb",
      "./app/helpers/**/*.rb",
      './app/components/**/*.erb',
      './app/components/**/*.rb',
      "./app/javascript/**/*.js",
    ]
  },
  theme: {
    fontFamily: {
      sans: ['Recursive', 'sans-serif'],
    },
    extend: {
      maxWidth: {
        '8xl': '88rem',
        '9xl': '96rem',
      }
    },
  },
  variants: {},
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/typography'),
  ],
}
