class RegistrationsController < Devise::RegistrationsController

  def update
    current_user.update(account_update_params)
    redirect_to trips_url
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :img, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :img, :password, :password_confirmation, :current_password)
  end

end
