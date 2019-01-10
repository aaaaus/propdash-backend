class CreateResLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :res_leases do |t|
      t.integer :resident_id
      t.integer :lease_id

      t.timestamps
    end
  end
end
