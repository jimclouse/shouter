class SessionController < ApplicationController
  def new
  end
  
  def create
    if User.where(:email => params[:session][:email] ).exists?
      puts params[:session][:email]
      cookies.permanent.signed[:email] = params[:session][:email]
      redirect_to shouts_path, notice: "You did it! You've signed in successfully!"
    else
      redirect_to sign_in_path, notice: "Login failed. Maybe you fat-fingered it. Try it again - Carefully this time!"
    end
  end
  
  def destroy
    cookies.delete(:email)
    redirect_to shouts_path, notice: "You've been logged out."
  end
end
