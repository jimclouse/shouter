class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to shouts_path
  end
  
  def new
    @user = User.new
  end
  
end
