# frozen_string_literal: true

class TailwindBuilder < ActionView::Helpers::FormBuilder
  def default_classes
    "w-full border-gray-300 rounded disabled:bg-gray-100"
  end

  def text_field(method, options={})
    super(method, options.merge(class: "#{options[:class]} #{default_classes}"))
  end

  def password_field(method, options={})
    super(method, options.merge(class: "#{options[:class]} #{default_classes}"))
  end

  def text_area(method, options={})
    super(method, options.merge(class: "#{options[:class]} #{default_classes}"))
  end

  def select(method, choices = nil, options = {}, html_options = {}, &block)
    super(method, choices, options, html_options.merge(class: "#{html_options[:class]} #{default_classes}"), &block)
  end
end
