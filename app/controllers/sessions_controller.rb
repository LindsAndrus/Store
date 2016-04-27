class SessionsController < ApplicationController
  def new
  	render 'sessions/new'
  end

  def create
   @loggedIn = User.find_by_email(params[:email])
    if @loggedIn && @loggedIn.authenticate(params[:password])
      session[:id] = @loggedIn.id
<<<<<<< HEAD
      redirect_to '/'
=======
      redirect_to '/products/index'
>>>>>>> origin/master
    else
      flash[:loginError] = "You entered the wrong login information"
      redirect_to '/sessions/new'
   end
  end

  def destroy
  	reset_session
    redirect_to '/'
  end
end
