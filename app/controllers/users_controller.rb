class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    @userz = User.new(user_params)
    if @userz.save
      flash[:success] = "You've created a new account, yipee!"
    else
      flash[:error] = @userz.errors.full_messages
    end
      redirect_to_root
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def user_params
   params.require(:user).permit(:name, :email, :password)
  end
end
