require_dependency "shopping_cart/application_controller"

module ShoppingCart
  class CartsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
    before_filter :authenticate_user!
    load_and_authorize_resource

    def show
      set_coupon
    end

    def edit
      set_coupon(params[:id])
      render 'show'
    end
  end

  private
  def set_coupon(number_cupon = 0)
    @coupon = Coupon.find_by_number(number_cupon)
    @coupon ||= Coupon.new(price: 0, id: 1)
    @order = Order.find_or_create_by(session[:order_id])
    @order.coupon_id = @coupon.id
    @order.save
  end
end
