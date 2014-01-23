class CreateVeryBuildings < ActiveRecord::Migration
  def change
    create_table :very_buildings do |t|
      t.integer :user_id
      t.string :type
      t.integer :position
      t.integer :hp

      t.timestamps
    end
  end
end
