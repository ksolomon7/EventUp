class GroupsController < ApplicationController
   
    def new
        @group= Group.new
    end

    def create
        @group= Group.create(group_params)
        redirect_to group_path
    end

    def show
        @group= Group.find(params[:id])
        @interest= @group.interests
        @current_user = User.find_by(id:session[:user_id])
    end
#############helper method################

private

    def group_params
        params.require(:group).permit(:name)
    end
end
