class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_user!

  def current_user
    super || GuestUser.new
  end
end
