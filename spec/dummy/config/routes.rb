Rails.application.routes.draw do
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  mount ShoppingCart::Engine => "/shopping_cart"

  devise_for :users, controllers: {
  	omniauth_callbacks: 'users/omniauth_callbacks'
  }

end
