class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def signed_in?
  	if session[:user]
  		return true
  	end
  end

  def current_user
  	if signed_in?
  		User.find_by(name:session[:user])
  	end
  end

  helper_method :signed_in?, :current_user
end
