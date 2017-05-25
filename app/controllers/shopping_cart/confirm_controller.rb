require_dependency "shopping_cart/application_controller"

module ShoppingCart
  class ConfirmController < ApplicationController
    before_filter :authenticate_user!
    load_and_authorize_resource

    def index
      session[:return_to] = true
      @order = Order.find(session[:order_id])
      @delivery = Delivery.find(@order.delivery_id)
      render 'confirm/index'
    end
  end
end
