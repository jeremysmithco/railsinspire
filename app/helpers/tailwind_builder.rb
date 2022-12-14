# frozen_string_literal: true

class TailwindBuilder < ActionView::Helpers::FormBuilder
  def default_classes
    "w-full border-neutral-300 rounded disabled:bg-neutral-100 placeholder-neutral-300"
  end

  def label(method, text = nil, options={})
    super(method, text, options.merge(class: "#{options[:class]} block text-sm text-neutral-500 mb-2"))
  end

  def file_field(method, options = {})
    super(method, options.merge(class: "#{options[:class]} w-full p-2 bg-neutral-300 rounded disabled:bg-neutral-100"))
  end

  def text_field(method, options={})
    super(method, options.merge(class: "#{options[:class]} #{default_classes}"))
  end

  def email_field(method, options={})
    super(method, options.merge(class: "#{options[:class]} #{default_classes}"))
  end

  def password_field(method, options={})
    super(method, options.merge(class: "#{options[:class]} #{default_classes}"))
  end

  def text_area(method, options={})
    super(method, options.merge(class: "#{options[:class]} #{default_classes}"))
  end

  def check_box(method, options = {}, checked_value = "1", unchecked_value = "0")
    super(method, options.merge(class: "#{options[:class]} border-neutral-300 rounded disabled:bg-neutral-100"), checked_value, unchecked_value)
  end

  def select(method, choices = nil, options = {}, html_options = {}, &block)
    super(method, choices, options, html_options.merge(class: "#{html_options[:class]} #{default_classes}"), &block)
  end
end
