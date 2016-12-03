class UsersController < ApplicationController

  def destroy
  	
  	session[:user] = nil
  	redirect_to welcome_logout_path
  end
end
