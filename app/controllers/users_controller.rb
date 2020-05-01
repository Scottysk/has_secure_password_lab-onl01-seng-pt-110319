class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.create(user_params)
    @user.save
      session[:user_id] = @user.id
      redirect_to :new
  end
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
end
