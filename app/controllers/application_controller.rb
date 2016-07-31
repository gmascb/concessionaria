class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :check_user
  
  private
  
  def current_user
    User.where(id: session[:user_id]).first
  end
  
  
  def check_user
    if !current_user
      redirect_to root_path #root_url
    end
  end
  
end
