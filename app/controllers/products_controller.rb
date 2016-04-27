class ProductsController < ApplicationController
  def index
    @products = Product.all
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
  end
end
