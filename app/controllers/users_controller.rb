class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.create(user_params)
  end
end
