class OrdersController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
    for idx in session[:cartItems]
      if params[:id] == idx
        flash[:message] = "This item is already in your cart"
        redirect_to '/'
      else
        (session[:cartItems] ||= []) << params[:id]
        redirect_to controller:'products', action: 'show'
      end
    end
  end

  def destroy
  end
end
