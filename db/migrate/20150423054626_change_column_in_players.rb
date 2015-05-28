class ChangeColumnInPlayers < ActiveRecord::Migration
  def change
  rename_column :players, :class, :classchoice
  end
end
