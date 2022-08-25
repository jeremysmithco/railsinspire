module ApplicationHelper
  def relative_time(timestamp)
    return if timestamp.blank?

    content_tag(:time, time_ago_in_words(timestamp), datetime: timestamp)
  end

  def menu_width_or_default
    cookies[:menu_width].presence.to_i || 250
  end

  def contents_width_or_default
    cookies[:contents_width].presence.to_i || 650
  end

  def editor_height_or_default
    cookies[:editor_height].presence.to_i || 650
  end
end
