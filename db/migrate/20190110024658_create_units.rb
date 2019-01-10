class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.integer :property_id
      t.string :number
      t.string :layout_type
      t.integer :floor
      t.integer :square_footage
      t.string :line
      t.string :floorplan
      t.string :status
      t.integer :market_rent

      t.timestamps
    end
  end
end
