class SampleFile < ApplicationRecord
  belongs_to :sample

  validates :path, presence: true, file_path: true

  def first_lines(number)
    return "" if contents.blank?

    contents.each_line.take(number)
  end

  def line_count_or_default
    return 1 if contents.blank?

    contents.lines.count
  end
end
