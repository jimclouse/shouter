class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to shouts_path
    else
      render :new
    end
  end
  
  def new
    @user = User.new
  end
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @shouts = @user.shouts
  end
  
  def to_param
    first_name
  end
  
end
