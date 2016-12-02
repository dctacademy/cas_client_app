class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def check_auth_params
  	#if current_user.nil?
	  	if params[:token]
		   	user = User.create(access_token: params[:token], email: params[:email])
		   	session[:user] = user
	  	end
	  #end
  end

  def current_user
  	@current_user ||= User.find(session[:user]["id"]) if session[:user]
  end

  def user_present?
  	return current_user.nil?
  end	

end
