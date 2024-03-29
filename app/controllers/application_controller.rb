class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
    @current_user ||= User.find_by_email(cookies.signed[:email])
  end
  helper_method :current_user
  
  def signed_in?
    current_user
  end
  helper_method :signed_in?
  
end
