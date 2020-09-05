class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        byebug
        @event = Event.create(event_params())
    end




    def event_params(args)
        params.require(:events).permit(args)
    end
end
