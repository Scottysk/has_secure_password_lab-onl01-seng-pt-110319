class SessionsController < ApplicationController
  
  def new
  end
  
  def create 
    @user = User.find_by(name: params[:user][:name])
    @authenticated = @user.try(:authenticate, params[:user][:password])
    if authenticated && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to :welcome
    else
      flash[:notice] = "Login is incorrect"
      redirect_to :login
    end
  end
  
  
end
