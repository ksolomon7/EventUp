class UsersController < ApplicationController
    before_action :set_current_user
    # skip_before_action :authorized_user, only: [:login, :handle_login, :new, :create]

    def new 
        @error= flash[:error]
        @user=User.new
    end

    def create
        @user= User.create(user_params)
        
        if @user.valid? 
            session[:user_id]= @user.id
            redirect_to user_path(@user)
        else
            flash[:error]=@user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def show
        @current_user = User.find_by(id:session[:user_id])
    end

   
###############custom actions ####################################   
    def login
        @error=flash[:error]
    end

    def handle_login
        byebug
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id]= @user.id
            redirect_to user_path(@user)
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
        params.require(:user).permit(:first_name, :last_name, :username, :age, :profile_description, :password)
    end

end
