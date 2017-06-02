require_dependency "shopping_cart/application_controller"

module ShoppingCart
  class ViewOrdersController < ApplicationController
    before_filter :authenticate_user!
    load_and_authorize_resource

    def index
      @order = if params[:sort_order] && params[:sort_order] != 'All'
        Order.sort_order_all(current_user, params)
      else
        Order.sort_order(current_user)
      end
    end
  end
end
