class UserEventsController < ApplicationController

    def new
        @userevent= UserEvent.new
        @current_user = User.find_by(id:session[:user_id])
    end

    def create
        @userevent= UserEvent.new(params.require(:userevent).permit(:event_id))
        @current_user = User.find_by(id:session[:user_id])
        @userevent.user_id = @current_user.id
        @userevent.save
    end
end
