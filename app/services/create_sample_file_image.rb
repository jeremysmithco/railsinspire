class CreateSampleFileImage
  def initialize(sample_file)
    @sample_file = sample_file
  end

  def create
    svg_string = ApplicationController.render(
      partial: "sample_files/sample_file", format: "svg", assigns: { sample_file: sample_file }
    )

    svg_file = Tempfile.new
    begin
      svg_file.write(svg_string)

      pipeline = ImageProcessing::Vips
      pipeline.source(svg_file).convert("png").call(destination: "sample_file.png")
    ensure
       svg_file.close
       svg_file.unlink
    end
  end

  private

  attr_reader :sample_file
end
