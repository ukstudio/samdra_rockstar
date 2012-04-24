class CreateTowers < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.string  :tower_name
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
