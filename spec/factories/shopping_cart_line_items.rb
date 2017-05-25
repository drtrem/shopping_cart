FactoryGirl.define do
  factory :shopping_cart_line_item, class: 'ShoppingCart::LineItem' do
    product_id 1
    cart_id 1
    quantity 1
    order_id 1
  end
end
