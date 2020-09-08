class UserEventsController < ApplicationController
    # skip_before_action :update

    def index
        @userevents= UserEvent.where(user_id:@current_user.id)
    end

    def show
        @userevent= UserEvent.find(params[:id])
        @group= @userevent.group
    end

    def new
        @userevent= UserEvent.new
    end

    def create
        @userevent = UserEvent.new
        @userevent.user_id = @current_user.id
        @userevent.event_id = params[:user_event][:event_id]
        @userevent.save
     
        redirect_to user_events_path
    end

    def destroy
        @userevent= UserEvent.find(params[:id])
        @userevent.destroy
        redirect_to user_events_path
    end

    #=======Custom Methods===================
    
    def add_event
        byebug
    end
end
