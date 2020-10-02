class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.float :product_price

      t.timestamps
    end
    add_index :order_items, [:product_id, :order_id], unique: true
  end
end
