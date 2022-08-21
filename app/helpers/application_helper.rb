module ApplicationHelper
  def relative_time(timestamp)
    return if timestamp.blank?

    content_tag(:time, time_ago_in_words(timestamp), datetime: timestamp)
  end
end
