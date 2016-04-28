class ProductsController < ApplicationController
  def index
    @products = Product.all
    if session[:id]
      @user = User.find(session[:id])
    end
  end

  def new
  end

  def show
    @products ||= []
    if session[:cartItems]
      for idx in session[:cartItems]
        @products.push(Product.find(idx))
      end
    end
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
    session[:cartItems].delete_at(params[:id].to_i)
    redirect_to controller: 'products', action: 'show', id: session[:id]
  end
end
