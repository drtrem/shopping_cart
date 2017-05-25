FactoryGirl.define do
  factory :shopping_cart_order, class: 'ShoppingCart::Order' do
    card_number 1
    name_on_card "MyString"
    mm_yy "MyString"
    cvv 1
    user_id 1
    state "MyString"
    subtotal 1
    coupon_id 1
    delivery_id 1
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    city "MyString"
    zip 1
    country "MyString"
    phone "MyString"
    shipping_first_name "MyString"
    shipping_last_name "MyString"
    shipping_address "MyString"
    shipping_city "MyString"
    shipping_zip 1
    shipping_country "MyString"
    shipping_phone "MyString"
  end
end
