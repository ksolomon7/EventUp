class UserEventsController < ApplicationController

    def index
        @userevents= UserEvent.all 
    end

    def show
        @userevent= UserEvent.find(params[:id])
    end

    def new
        @userevent= UserEvent.new
        @current_user = User.find_by(id:session[:user_id])
    end

    def create
        @userevent= UserEvent.create(params.require(:userevent).permit(:user_id, :event_id))   
    end

    def destroy
        @userevent= UserEvent.find(params[:id])
        @userevent.destroy
        redirect_to users_event_path
    end
end
