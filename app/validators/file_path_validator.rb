class FilePathValidator < ActiveModel::EachValidator
  FILE_PATH_REGEX = /\A[\w.-][\w.-\/]+[\w.-]\Z/i

  def validate_each(record, attribute, value)
    return if value.blank?
    return if value =~ FILE_PATH_REGEX

    record.errors.add(attribute, (options[:message] || default_message))
  end

  private

  def default_message
    "is not a valid file path"
  end
end
