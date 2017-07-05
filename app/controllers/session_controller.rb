class SessionController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(name:params[:session][:name])

  	if user
  		session[:user] = user.name
  		flash = "welcome"
  		redirect_to new_event_path

  	else
  		flash = "No such user"
  		render 'new'
  end
end


end
