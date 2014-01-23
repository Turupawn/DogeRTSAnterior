class CreateMuchWithdraws < ActiveRecord::Migration
  def change
    create_table :much_withdraws do |t|
      t.integer :building_id
      t.datetime :timestamp
      t.integer :amount

      t.timestamps
    end
  end
end
