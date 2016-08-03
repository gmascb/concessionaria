class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to page_index_path
    else
      #render :new
      loginFailed
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
  
  def loginFailed
    redirect_to root_url, notice: 'Usuário ou Senha Inválida!'
  end
end
