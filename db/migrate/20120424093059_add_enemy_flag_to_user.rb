class AddEnemyFlagToUser < ActiveRecord::Migration
  def change
    add_column :users, :enemy_flag, :boolean
  end
end
