class UsersController < ApplicationController
    before_action :get_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorized, only: [:new, :create]
    def index 
        @users = User.all
    end 
    
    def show 
    end 

    def new
        @user = User.new
    end 

    
    def create 
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id

            flash[:success] = "Wellcome to FlyEz, discover the world with us"
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end 

    def edit
    end
    
    # def update
    #     if @user.update(user_params)
    #         redirect_to user_path(@user)
    #     else
    #         flash[:errors] = @user.errors.full_messages
    #         redirect_to edit_user_path(@user)
    #     end
    # end 
    

    # def destroy 
    #     @user.destroy
    #     #redirect_to 
    # end

    private

    def user_params
        params.require(:user).permit!
    end

    def get_user
        @user = User.find(params[:id])
    end
end
