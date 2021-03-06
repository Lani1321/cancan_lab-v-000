class SessionsController < ApplicationController
  def create
    session[:user_id] = User.find_or_create_by(name: params[:name]).id
    redirect_to root_path
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end