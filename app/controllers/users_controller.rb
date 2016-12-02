class UsersController < ApplicationController

  def destroy
  	user = User.find(params[:id])
  	user.destroy
  	session[:user] = nil
  	redirect_to welcome_logout_path
  end
end
