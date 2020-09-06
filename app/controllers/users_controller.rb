class UsersController < ApplicationController
    #skip_before_action :authorized_user

    def new 
        @error= flash[:error]
        @user=User.new
    end

    def create
        @user= User.create(user_params)
        
        if @user.valid? 
            redirect_to user_path(@user)
        else
            flash[:error]=@user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def show
        byebug
        @current_user = User.find_by(id:session[:user_id])
    end

###############custom actions ####################################   
    def login
        @error=flash[:error]
    end

    def handle_login
        @user = User.find_by(username:params["username"])

        if @user && @user.authenticate(params[:password])
            session[:user_id]= @user.id
            redirect_to user_path(session[:user_id])
        else
            flash[:error] = "Incorrect username or password"
            redirect_to login_path 
        end
    end

    def logout
        session[:user_id] = nil
        redirect_to home_page_path
    end

##################helper methods#################################

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :age, :profile_descriptions, :password)
    end

end
