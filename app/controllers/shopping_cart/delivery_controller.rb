require_dependency "shopping_cart/application_controller"

module ShoppingCart
  class DeliveryController < ApplicationController
    before_filter :authenticate_user!
    load_and_authorize_resource

    def create
      if session[:return_to].nil?
        session[:delivery_id] = params[:user][:id]
        redirect_to payment_index_path
      else
        session[:delivery_id] = params[:user][:id]
        @order = Order.find(session[:order_id])
        @delivery = Delivery.find(@order.delivery_id)
        render 'confirm/index'
      end
    end
  end
end
