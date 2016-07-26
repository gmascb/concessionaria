class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
  
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
  
  def check_user
    if !current_user
      redirect_to root_url
    end
  end
  helper_method :check_user
  
end
