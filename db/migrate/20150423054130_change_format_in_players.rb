class ChangeFormatInPlayers < ActiveRecord::Migration
  def change
  change_column :players, :rank, :string
  change_column :players, :rating, :string
  change_column :players, :seasonwins, :string
  change_column :players, :seasonlosses, :string
  end
end
