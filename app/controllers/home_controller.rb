class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @samples = Sample.status_public.order(created_at: :desc).limit(10)
    @categories = Category.all.order(:name)
  end
end
