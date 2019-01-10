class CreateUnitAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_amenities do |t|
      t.integer :unit_id
      t.integer :amenity_id

      t.timestamps
    end
  end
end
