require 'redcarpet/render_strip'

class PreviewRenderer < Redcarpet::Render::StripDown
  def link(link, title, content)
    content
  end

  def image(link, title, content)
    ""
  end
end
