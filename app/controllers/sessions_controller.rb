class SessionsController < ApplicationController
    
    def create
      user = User.find_by(name: params[:user][:name])
      authenticated = user.try(:authenticate, params[:user][:password])
      
       if !authenticated
        return redirect_to(controller: 'sessions', action: 'new')
       else
        @user = user
        session[:user_id] = @user.id
        
        redirect_to '/'
       end
    end
end
