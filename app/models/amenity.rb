class Amenity < ApplicationRecord
  has_many :prop_amenities
  has_many :properties, through: :prop_amenities

  has_many :unit_amenities
  has_many :units, through: :unit_amenities
end
