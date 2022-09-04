class UsernameValidator < ActiveModel::EachValidator
  USERNAME_REGEX = /\A([a-z0-9_-]+)\Z/i

  def validate_each(record, attribute, value)
    return if options[:allow_blank] && value.blank?
    return if options[:allow_nil] && value.nil?
    return if value =~ USERNAME_REGEX

    record.errors.add(attribute, (options[:message] || default_message))
  end

  private

  def default_message
    "is not a valid format"
  end
end
