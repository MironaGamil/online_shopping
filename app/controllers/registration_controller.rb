class RegistrationsController < Devise::RegistrationsController
 params.require(:status).permit(:user_id, :name, :content)
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email,:image, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email,:image, :password, :password_confirmation, :current_password)
  end