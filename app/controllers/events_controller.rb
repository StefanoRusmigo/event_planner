class EventsController < ApplicationController
	before_action :is_logged_in, only: [:create,:new]
	def new
		@event = Event.new
	end

	def create
		user = current_user
		user.created_events.build(event_params)

		if user.save
			redirect_to Event.last
		else
			render 'new'
		end

	end

	def show
		@event = Event.find(params[:id])
	end

	def index
		@events = Event.all
	end

	private

	def event_params
		params.require(:event).permit(:name,:location,:date)
	end

	def is_logged_in
		unless signed_in?
			redirect_to session_new_path
		end

	end
end
