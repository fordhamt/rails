class AddDualIndexToPlayers < ActiveRecord::Migration
  def change
  add_index :players, [:playername, :server], unique: true
  end
end
