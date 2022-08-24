class ResizesController < ApplicationController
  skip_before_action :authenticate_user!

  def update
    cookies[:editor] = JSON.generate({ menu_width: params[:width].to_i })

    head :no_content
  end
end
