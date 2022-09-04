class Account::AvatarsController < ApplicationController
  def update
    if current_user.update(avatar_params)
      redirect_to account_account_path, notice: "Avatar uploaded"
    else
      render "account/accounts/show", status: :unprocessable_entity
    end
  end

  def destroy
    if current_user.avatar.purge
      redirect_to account_account_path, notice: "Avatar removed"
    else
      render "account/accounts/show", status: :unprocessable_entity
    end
  end

  private

  def avatar_params
    params.require(:user).permit(:avatar)
  end
end
