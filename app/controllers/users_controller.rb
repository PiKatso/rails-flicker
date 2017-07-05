class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    flash[:notice] = "Successful account creation!"
    session[:user_id] = @user.id
      redirect_to  "/"
    else
      flash[:alert] = "Account creation failed!"
      render '/signup'
    end
  end

private
  def user_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    # params.require(:user).permit(:email, :encrypted_password)
    params.require(:user).permit(:username, :email, :encrypted_password)
  end
end
