class WelcomeController < ApplicationController

	before_action :check_auth_params, only: [:index], if: :user_present?

  def index
  	
  end

  def logout

  end
end
