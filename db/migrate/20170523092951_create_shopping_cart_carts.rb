class CreateShoppingCartCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_cart_carts do |t|

      t.timestamps
    end
  end
end
