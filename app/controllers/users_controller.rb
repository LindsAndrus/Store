class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to "/users"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/"
    end
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
