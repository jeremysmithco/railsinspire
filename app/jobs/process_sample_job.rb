class ProcessSampleJob
  include Sidekiq::Job

  def perform(sample_id)
    sample = Sample.find(sample_id)

    sample.sample_files.each do |sample_file|
      sample_file.update_open_graph_image
    end
  end
end
