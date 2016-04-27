class SessionsController < ApplicationController
  def new
  	render 'sessions/new'
  end

  def create
   @loggedIn = User.find_by_email(params[:email])
    if @loggedIn && @loggedIn.authenticate(params[:password])
      session[:id] = @loggedIn.id
      redirect_to_root
    else
      flash[:loginError] = "You entered the wrong login information"
      redirect_to '/sessions/new'
   end
  end

  def destroy
  	session[:id] = nill
    redirect_to '/products/index'
  end
end
