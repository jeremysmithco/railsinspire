# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Formatters
    class SVGInline < HTML
      tag 'svg_inline'

      def initialize(theme)
        if theme.is_a?(Class) && theme < Rouge::Theme
          @theme = theme.new
        elsif theme.is_a?(Rouge::Theme)
          @theme = theme
        elsif theme.is_a?(String)
          @theme = Rouge::Theme.find(theme).new
        else
          raise ArgumentError, "invalid theme: #{theme.inspect}"
        end
      end

      def safe_span(tok, safe_val)
        return safe_val if tok == Token::Tokens::Text

        style = @theme.style_for(tok)

        "<tspan fill=\"#{style.fg}\">#{safe_val}</tspan>"
      end
    end
  end
end
