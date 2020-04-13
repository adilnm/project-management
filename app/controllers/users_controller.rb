class UsersController < ApplicationController

    def create
        user=User.new(users_params)
        if user.save
            session[:user_id]=user.id
            render :user
        else
            render json:{errors: user.errors.full_messages}
        end
    
    end

    def users_params
        params.require(:user).permit(:username, :email, :password)
    end
end
