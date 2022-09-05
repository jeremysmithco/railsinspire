class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @users = User.where.not(username: "")
  end

  def show
    @user = User.find_by(username: params[:username])
    authorize @user, policy_class: UserProfilePolicy
    @samples = @user.samples.status_public
  end
end
