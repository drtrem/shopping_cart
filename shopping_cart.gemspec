$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shopping_cart/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shopping_cart"
  s.version     = ShoppingCart::VERSION
  s.authors     = ["Dmitriy"]
  s.email       = ["dr.trem86@gmail.com"]
  s.homepage    = "https://github.com/drtrem"
  s.summary     = "shopping_cart"
  s.description = "shopping_cart"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails', '~> 5.0.2'
  s.add_dependency 'coffee-rails', '~> 4.2'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'turbolinks', '~> 5'
  s.add_dependency 'haml'
  s.add_dependency 'aasm'
  s.add_dependency 'cancancan'
  s.add_dependency 'bootstrap-sass'
  s.add_dependency 'devise'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'rails-controller-testing'

  s.test_files = Dir["spec/`/*"]
end
