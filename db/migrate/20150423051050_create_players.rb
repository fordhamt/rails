class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :rank
      t.integer :rating
      t.string :playername
      t.string :server
      t.string :race
      t.string :gender
      t.string :class
      t.string :faction
      t.integer :seasonwins
      t.integer :seasonlosses

      t.timestamps null: false
    end
  end
end
