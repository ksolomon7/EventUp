class UsersController < ApplicationController
    
    def new 
        @error= flash[:error]
        @user=User.new
    end

    def create
        @user= User.create(user_params)
        
        if @user.valid? 
            redirect_to user_path
        else
            flash[:error]=@user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
    end

###############custom actions ####################################   
    def login
        @error=flash[:error]
    end

    def handle_login
        @user = User.find_by(username:params["username"])

        if @user && @user.authenticate(params[:password])
            redirect_to user_path(@user)
        else
            flash[:error] = "Incorrect username or password"
            redirect_to login_path 
        end
    end


##################helper methods#################################

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :age, :profile_descriptions, :password)
    end

end
