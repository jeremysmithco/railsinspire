class SampleFile < ApplicationRecord
  belongs_to :sample
  has_one_attached :open_graph_image

  validates :path, presence: true, file_path: true

  def first_lines(number)
    return "" if contents.blank?

    contents.each_line.take(number)
  end

  def line_count_or_default
    return 1 if contents.blank?

    contents.lines.count
  end

  def update_open_graph_image
    self.open_graph_image.attach(io: CreateSampleFileImage.new(self).create, filename: "sample_file_#{id}.png")
  end
end
