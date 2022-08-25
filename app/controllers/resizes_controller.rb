class ResizesController < ApplicationController
  skip_before_action :authenticate_user!

  def update
    case params[:setting]
    when "menu_width"
      cookies[:menu_width] = params[:width].to_i
    when "contents_width"
      cookies[:contents_width] = params[:width].to_i
    when "editor_height"
      cookies[:editor_height] = params[:height].to_i
    end

    head :no_content
  end
end
