class ApplicationController < ActionController::Base
    before_action :set_current_user
    helper_method :check_current_user
    #before_action :authorized_user
    

    def set_current_user
        # @current_user ||= session[:user_id] && User.find_by(id: session[:id])
        @current_user = User.find_by(id: session[:user_id])
    end

    def check_current_user
        !set_current_user.nil?
    end

    def authorized_user
        redirect_to login_path unless check_current_user
    end

end
