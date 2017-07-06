class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  # helper_method :current_user

  # def current_user
  #   if session[:user_id]
  #     @current_user ||= User.find(session[:user_id])
  #   end
  # end

  # def authorize
  #   if !current_user
  #     flash[:alert] = "You aren't authorized to visit that page."
  #     redirect_to '/'
  #   end
  # end

  protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
   end

end
