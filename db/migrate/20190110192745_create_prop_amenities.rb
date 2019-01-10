class CreatePropAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :prop_amenities do |t|
      t.integer :property_id
      t.integer :amenity_id

      t.timestamps
    end
  end
end
