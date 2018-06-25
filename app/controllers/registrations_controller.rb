class RegistrationsController < Devise::RegistrationsController

  def update
    respond_to do |format|
      if current_user.update( account_update_params)
        format.html { redirect_to current_user, notice: 'Current_user was successfully updated.' }
        format.json { render :show, status: :ok, location: current_user }
      else
        format.html { render :edit }
        format.json { render json: current_user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :img, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :img, :password, :password_confirmation, :current_password)
  end

end
