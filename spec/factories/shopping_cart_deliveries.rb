FactoryGirl.define do
  factory :shopping_cart_delivery, class: 'ShoppingCart::Delivery' do
    method "MyString"
    days "MyString"
    price 1
  end
end
