class SampleFile < ApplicationRecord
  belongs_to :sample

  def lines_or_default
    return 1 if contents.blank?

    contents.lines.count
  end
end
