require 'byebug'
class SessionsController < ApplicationController
  def new
  end

  def destroy
    sessions.delete(params[:user_id])
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if params[:user][:password] == nil || params[:user][:password].empty?
      redirect_to '/sessions/new' 
    elsif @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
    end
  end
  
end
