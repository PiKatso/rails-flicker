# class SessionsController < ApplicationController
#   def create
#     @user = User.authenticate(params[:username], params[:password])
#     if @user
#       flash[:notice] = "Welcome back!"
#       session[:user_id] = @user.id
#       redirect_to "/"
#     else
#       flash[:alert] = "There was a problem signing in. Please try again."
#       redirect_to signin_path
#     end
#   end
#
#   def destroy
#     session[:user_id] = nil
#     flash[:notice] = "Succesfully signed out!"
#     redirect_to "/"
#   end
# end
