class ShoutsController < ApplicationController
  before_filter :authorize, :only => [:create]
  
  def index
    @shouts = Shout.current.includes(:user) # includes is an example of eager loading
    @shout = Shout.new
  end
  
  def create
    @shout = current_user.shouts.new(params[:shout])
    if @shout.save
      redirect_to shouts_path
    else
      @shouts = Shout.current
      render :index
    end
  end
  
  def authorize
    redirect_to(root_path, :notice => "You must be signed in") unless signed_in?
  end
  
  
end
