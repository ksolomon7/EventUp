class UsersController < ApplicationController
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


    def show
        @user = User.find(params[:id])
    end







end
