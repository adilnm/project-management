class SessionsController < ApplicationController
    def create
        user=User.find_by(:username=>params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id]=user.id
            render :user
        else
            reder json:{errors:user.errors.full_messages}
        end
    end

    def destroy
        reset_session
    end
end
