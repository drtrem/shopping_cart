require "shopping_cart/engine"

require 'aasm'
require 'bootstrap-sass'
require 'cancancan'
require 'devise'
require 'haml'
require 'jquery-rails'
require 'coffee-rails'
require 'turbolinks'
require 'devise'


module ShoppingCart
  def self.load_files
    Dir['app/services/shopping_cart/*.rb']
  end
end
