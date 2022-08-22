class SamplesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def show
    @sample = Sample.find(params[:id])
    @sample_file = @sample.sample_files.first

    render "sample_files/show"
  end
end
