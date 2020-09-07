class EventsController < ApplicationController
    def index
        @events = Event.all
        @current_user= User.find_by(id: session[:user_id])
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.create(event_params)
    end

    def destroy
        @event= Event.find(params[:id])
        @event.destroy
        # need to send it back to the page
    end

###############helper method###############################
    def event_params
        params.require(:event).permit(:name, :date_and_time, :price, :venue, :group)
    end
end
