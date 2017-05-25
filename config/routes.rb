ShoppingCart::Engine.routes.draw do
    resources :line_items, only: %i(index new create update destroy)
    resources :carts, only: %i(show edit)
    resources :orders, only: %i(index create)
    resources :payment, only: %i(index create)
    resources :delivery, only: %i(index create)
    resources :confirm, only: [:index]
    resources :complete, only: [:index]
    resources :view_orders, only: [:index]
end

#@cart.line_items.update_all(cart_id: nil)
#Cart.destroy(session[:cart_id])
#session[:cart_id] = nil
  #<%= stylesheet_link_tag    "shopping_cart/application", media: "all" %>
  #<%= javascript_include_tag "shopping_cart/application" %>
  #<%= csrf_meta_tags %>