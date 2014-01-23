class CreateShibeAttacks < ActiveRecord::Migration
  def change
    create_table :shibe_attacks do |t|
      t.integer :user_attacker_id
      t.integer :user_attacked_id
      t.integer :units_used
      t.integer :units_destroyed
      t.integer :damage_dealt

      t.timestamps
    end
  end
end
