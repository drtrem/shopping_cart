class CreateShoppingCartOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_cart_orders do |t|
      t.integer :card_number
      t.string :name_on_card
      t.string :mm_yy
      t.integer :cvv
      t.integer :user_id
      t.string :state
      t.integer :subtotal
      t.integer :coupon_id
      t.integer :delivery_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.integer :zip
      t.string :country
      t.string :phone
      t.string :shipping_first_name
      t.string :shipping_last_name
      t.string :shipping_address
      t.string :shipping_city
      t.integer :shipping_zip
      t.string :shipping_country
      t.string :shipping_phone

      t.timestamps
    end
  end
end
