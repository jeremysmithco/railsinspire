class ApplicationController < ActionController::Base
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_user
    super || GuestUser.new
  end

  def user_signed_in?
    super && !current_user.is_a?(GuestUser)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  private

  def user_not_authorized
    redirect_back(fallback_location: root_path, alert: "You are not authorized to perform this action.")
  end
end
