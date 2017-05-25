class CreateShoppingCartCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_cart_coupons do |t|
      t.integer :number
      t.integer :price

      t.timestamps
    end
  end
end
