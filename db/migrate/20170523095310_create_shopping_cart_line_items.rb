class CreateShoppingCartLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_cart_line_items do |t|
      t.integer :product_id
      t.integer :cart_id
      t.integer :quantity
      t.integer :order_id

      t.timestamps
    end
  end
end
