class SamplesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def show
    @sample = Sample.find(params[:id])
    @sample_file = @sample.sample_files.first
    authorize @sample

    render "sample_files/show"
  end

  def new
    @sample = current_user.samples.new
    @sample.sample_files.new
    authorize @sample
  end

  def create
    @sample = current_user.samples.new(sample_params)
    authorize @sample

    if @sample.save
      redirect_to @sample
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @sample = current_user.samples.find(params[:id])
    authorize @sample
  end

  def update
    @sample = current_user.samples.find(params[:id])
    authorize @sample

    if @sample.update(sample_params)
      redirect_to @sample
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def sample_params
    params.require(:sample).permit(
      :title, :description, :category_id, :status,
      sample_files_attributes: [:id, :_destroy, :path, :contents, :description]
    )
  end
end
