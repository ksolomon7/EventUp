class UsersController < ApplicationController
    def login
        flash[:error]
    end

    def handle_login
        @user = User.find_by(username:params["username"])

        if @user && @user.authenticate(params[:password])
            redirect_to user_path(@user)
        else
            redirect_to login_path
            flash[:error] = "Incorrect username or password" 
        end
    end


    def show
        @user = User.find(params[:id])
    end







end
