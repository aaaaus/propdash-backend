class Property < ApplicationRecord
  has_many :units

  has_many :prop_amenities
  has_many :amenities, through: :prop_amenities
end
