# frozen_string_literal: true

module Rouge
  module Themes
    class OneDark < CSSTheme
      name 'one-dark'

      palette faint: "#7F848E"
      palette purple: "#CD74E8"
      palette red: "#BE5046"
      palette salmon: "#EB6772"
      palette orange: "#DB9D63"
      palette blue: "#5CB3FA"
      palette white: "#AAB2BF"
      palette yellow: "#F0C678"
      palette pink: "#F8418E"
      palette green: "#98C379"
      palette aqua: "#5EBFCC"

      style Comment, fg: :faint, italic: true
      style Keyword, fg: :purple
      style Keyword::Pseudo, fg: :blue
      style Literal::Number, fg: :orange
      style Literal::String, fg: :green
      style Literal::String::Interpol, fg: :red
      style Literal::String::Symbol, fg: :aqua
      style Name::Attribute, fg: :orange
      style Name::Builtin, fg: :blue
      style Name::Class, fg: :yellow
      style Name::Constant, fg: :yellow
      style Name::Function, fg: :blue
      style Name::Tag, fg: :salmon
      style Operator, fg: :pink
      style Punctuation, fg: :white
      style Text, fg: :white
    end
  end
end
