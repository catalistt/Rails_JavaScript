class CreateComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :components do |t|
      t.string :name
      t.integer :quantity
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
