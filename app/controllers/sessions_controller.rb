class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :login]

    def new
    end

    def login
        user = User.find_by(name: params[:session][:name])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else 
            flash.alert = "Name or Password Incorrect"
            redirect_to new_login_path
        end
    end

    def logout
        session.delete(:user_id)
        
        redirect_to bookings_path
    end


end
