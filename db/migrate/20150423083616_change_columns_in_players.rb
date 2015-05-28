class ChangeColumnsInPlayers < ActiveRecord::Migration
  def change
  change_column :players, :rank, :integer
  change_column :players, :rating, :integer
  change_column :players, :seasonwins, :integer	
  change_column :players, :seasonlosses, :integer
  end

end
