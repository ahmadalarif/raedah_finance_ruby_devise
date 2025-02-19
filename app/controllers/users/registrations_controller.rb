# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :name, :mobile_number, :gender, :email, :upload_cv, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:log_in) { |u| u.permit(:username, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :name, :mobile_number, :gender, :email, :upload_cv, :password) }
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'CV was successfully uploaded.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :cv) # Allowing `cv` to be uploaded
  end
end
