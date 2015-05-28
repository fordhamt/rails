class AddIndexToPlayersRank < ActiveRecord::Migration
  def change
    add_index :players, :rank, unique: true
	end
end
