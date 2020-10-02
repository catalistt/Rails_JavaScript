class CreateProductVariations < ActiveRecord::Migration[5.2]
  def change
    create_table :product_variations do |t|
      t.references :product, foreign_key: true
      t.references :variation, foreign_key: true
      t.integer :stock

      t.timestamps
    end
    add_index :product_variations, [:variation_id, :product_id], unique: true
  end
end
