class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, :except => [:index, :show]
  protect_from_forgery with: :exception

  # helper_method :is_admin?

  protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
     devise_parameter_sanitizer.permit(:account_update, keys: [
       :username, :email, :password, :current_password, :avatar])
   end

end
