class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @users = User.all.includes(:samples).references(:samples).merge(Sample.status_public)
  end

  def show
    @user = User.find_by(username: params[:username])
    authorize @user, policy_class: UserProfilePolicy
    @samples = @user.samples.status_public
  end
end
