class SamplesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def show
    @sample = Sample.find(params[:id])
  end
end
