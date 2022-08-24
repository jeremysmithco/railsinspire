module ApplicationHelper
  def relative_time(timestamp)
    return if timestamp.blank?

    content_tag(:time, time_ago_in_words(timestamp), datetime: timestamp)
  end

  def menu_width_or_default
    JSON.parse(cookies[:editor])["menu_width"].presence || 250
  end
end
