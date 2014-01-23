class CreateWowUpgrades < ActiveRecord::Migration
  def change
    create_table :wow_upgrades do |t|
      t.integer :building_id
      t.string :type

      t.timestamps
    end
  end
end
