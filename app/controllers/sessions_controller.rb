class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
  end

  def destroy
  end
end
