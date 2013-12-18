class Users::RegistrationsController < Devise::RegistrationsController
  layout "layouts/auth"

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_in){ |u| u.permit(:username, :password) }
		devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:name, :username, :email, :password, :password_confirmation)}
	end
end