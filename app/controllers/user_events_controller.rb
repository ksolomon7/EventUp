class UserEventsController < ApplicationController

    def new
        @userevent= UserEvent.new
    end

    def create
        @userevent= UserEvent.create(params.require(:userevent).permit(:user_id, :event_id))
    end
end
