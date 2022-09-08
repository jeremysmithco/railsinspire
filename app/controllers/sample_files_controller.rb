class SampleFilesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @sample = Sample.find(params[:sample_id])
    @sample_file = SampleFile.find(params[:id])
    authorize @sample
  end
end
