class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.belongs_to :user, :null => false
      t.integer :x, :null => false
      t.integer :y, :null => false
      t.boolean :home, :default => false

      t.timestamps
    end
    add_index :territories, :user_id
  end
end
