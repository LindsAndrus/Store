class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def show
    puts session[:cartItems]
    @products = []
    for idx in session[:cartItems]
      @products.push(Product.find(idx))
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
