require_dependency "shopping_cart/application_controller"

module ShoppingCart
  class CompleteController < ApplicationController
    before_filter :authenticate_user!
    load_and_authorize_resource

    def index
      @order = Order.find(session[:order_id])
      @delivery = Delivery.find(@order.delivery_id)
      @item = LineItem.where(order_id: session[:order_id])
      render 'complete/index'
      clear_session
    end

    private
    def clear_session
      session[:order_id] = nil
      session[:return_to] = nil
    end

  end
end
