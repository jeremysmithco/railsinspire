class Account::PasswordsController < ApplicationController
  def update
    if current_user.update_with_password(password_params)
      bypass_sign_in(current_user)
      redirect_to account_account_path, notice: "Password updated"
    else
      render "account/accounts/show", status: :unprocessable_entity
    end
  end

  private

  def password_params
    params.require(:user).permit(
      :password, :password_confirmation, :current_password
    )
  end
end
