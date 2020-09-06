class ApplicationController < ActionController::Base
    before_action :set_current_user
    helper_method :check_current_user

    def set_current_user
        @current_user = User.find_by(id: session[:id])
    end

    def check_current_user
        !set_current_user.nil?
    end

    def authorized_user
        redirect_to login_path unless check_current_user
    end
end
