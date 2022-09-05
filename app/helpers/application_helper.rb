module ApplicationHelper
  def user_avatar(user, size: 100)
    if user.avatar.attached?
      user.avatar.variant(resize_to_limit: [size, size])
    else
      "avatar.svg"
    end
  end

  def default_meta_tags
    {
      separator: "-",
      site: "RailsInspire",
      reverse: true,
      og: {
        site_name: :site,
        type: "website",
        title: :title,
        description: :description,
        # image: image_url('opengraph.jpg')
      },
      twitter: {
        card: "photo",
        title: :title,
        description: :description,
        # image: image_url('opengraph.jpg')
      }
    }
  end

  def flash_class(level)
    case level
      when "success" then "bg-green-700"
      when "notice" then "bg-blue-700"
      when "message" then "bg-blue-700"
      when "warning" then "bg-amber-700"
      when "error" then "bg-red-700"
      when "alert" then "bg-red-700"
    end
  end

  def relative_time(timestamp)
    return if timestamp.blank?

    content_tag(:time, time_ago_in_words(timestamp), datetime: timestamp)
  end

  def menu_width_or_default
    cookies[:menu_width].presence || 250
  end

  def contents_width_or_default
    cookies[:contents_width].presence || 650
  end

  def editor_height_or_default
    cookies[:editor_height].presence || 650
  end
end
