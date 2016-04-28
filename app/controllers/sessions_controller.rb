class SessionsController < ApplicationController
  def new
  	redirect_to "/sessions/new"
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:id] = user[:id]
      redirect_to '/'
    else
      flash[:danger] = 'Invalid email/password combination'
      redirect_to "/sessions/new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sessions/new'
  end
end
