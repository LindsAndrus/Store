class OrdersController < ApplicationController
  def index
  end

  def new
    # @products = session[:cartItems]
  end

  def show

  end

  def create
    @order = Order.create(total:params[:grandTotal], user_id:session[:id])
    # @prodOrd = Prod_orders.create(order_id:@order.id, product_id:params[:product_id])
    redirect_to @order
  end

  def edit
  end

  def update
    session[:cartItems] ||= []
    puts session[:cartItems]
    if session[:cartItems].length > 0
      for idx in session[:cartItems]
        if params[:id] == idx
          flash[:message] = "This item is already in your cart"
          redirect_to '/' and return
        else
          session[:cartItems].push(params[:id])
          redirect_to '/' and return
        end
      end
    else
      session[:cartItems].push(params[:id])
      redirect_to '/' and return
    end
  end

  def destroy
  end
end
