require_dependency "shopping_cart/application_controller"

module ShoppingCart
  class ViewOrdersController < ApplicationController
    before_filter :authenticate_user!
    load_and_authorize_resource

    def index
      if params[:sort_order] && params[:sort_order] != 'All'
        @order = ViewOrdersDecorator.decorate_collection(Order.sort_order_all(current_user, params))
      else
        @order = ViewOrdersDecorator.decorate_collection(Order.sort_order(current_user))
      end
    end
  end
end
