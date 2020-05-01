class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to :welcome
    else
      redirect_to :new
  end
end
