class SlugValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank?
    return if value.to_s.match?(/\A([a-z0-9_-]+)\Z/)

    record.errors.add(attribute, (options[:message] || default_message))
  end

  private

  def default_message
    "is not a valid slug format"
  end
end
