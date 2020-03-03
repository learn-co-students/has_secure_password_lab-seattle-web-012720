class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        if user.save 
          session[:user_id] = user.id
            @user = user
            redirect_to controller: 'welcome', action:'index'
        else
            redirect_to controller: 'users', action: 'new'
        end
    end


private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :password_digest)
  end
end
