class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.create(user_params)
    redirect_to '/'
  end

  def destroy
  end
end
