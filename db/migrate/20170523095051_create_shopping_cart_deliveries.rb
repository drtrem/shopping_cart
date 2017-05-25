class CreateShoppingCartDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_cart_deliveries do |t|
      t.string :method
      t.string :days
      t.integer :price

      t.timestamps
    end
  end
end
