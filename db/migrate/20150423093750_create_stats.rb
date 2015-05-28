class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :level
      t.string :guild
      t.string :kills
      t.string :battlegroup
      t.string :points
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :stats, [:player_id, :created_at]
  end
end
