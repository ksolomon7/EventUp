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
    end
#############helper method################

private

    def group_params
        params.require(:group).permit(:name)
    end
end
