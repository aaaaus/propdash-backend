class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|
      t.integer :unit_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :rent
      t.string :status
      t.integer :account_balance
      t.boolean :in_legal

      t.timestamps
    end
  end
end
