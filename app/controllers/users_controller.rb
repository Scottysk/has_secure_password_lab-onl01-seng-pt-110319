class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.create(user_params)
    @user.save
      session[:user_id] = @user.id
      redirect_to :welcome
  end
  
end
