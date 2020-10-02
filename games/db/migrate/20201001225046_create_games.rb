class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.integer :max_players
      t.integer :min_players

      t.timestamps
    end
  end
end
