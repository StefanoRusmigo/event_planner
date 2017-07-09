class InvitationsController < ApplicationController
  def new
  	@event = Event.find(params[:event_id])
  end

  def create
  	@user = User.find_by(name:params[:invite][:name].capitalize)
  	@event = Event.find(params[:invite][:event_id])
  	if @user 
  		@event.guests << @user
  		redirect_to @event
  	else
  		render 'new'

  	end

  end

 
end
