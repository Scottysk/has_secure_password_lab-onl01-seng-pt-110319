class SessionsController < ApplicationController
  
  def new
  end
  
  def create 
    @user = User.create()
  end
  
  
end
