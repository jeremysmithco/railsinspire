class Account::AccountsController < ApplicationController
  def show
  end

  def update
    if current_user.update(account_params)
      redirect_to account_account_path, notice: "Account updated"
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def account_params
    params.require(:user).permit(
      :avatar, :email, :username
    )
  end
end
