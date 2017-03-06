class RegistrationsController < Devise::RegistrationsController

  private

  def sig_up_params
    params.require(:user).permit(:user, :name, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:user, :name, :password, :password_confirmation, :current_password)
  end
end
