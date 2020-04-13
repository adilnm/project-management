class UsersController < ApplicationController

    def create
        user=User.new(users_params)

        if user.save
            session[:user_id]=user.id
            render :user
        else
            render json:{error:'cannot signup'}
        end
    
    end

    def users_params
        params.require(:user).permit(:username, :email, :password)
    end
end
