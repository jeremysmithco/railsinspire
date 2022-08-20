module.exports = {
  purge: {
    content: [
      "./app/views/**/*.html.erb",
      "./app/helpers/**/*.rb",
      "./app/javascript/**/*.js",
      "./config/initializers/simple_form.rb",
    ]
  },
  theme: {
    fontFamily: {
      sans: ['Recursive', 'sans-serif'],
    },
  },
  variants: {},
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
  ],
}
