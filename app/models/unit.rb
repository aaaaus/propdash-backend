class Unit < ApplicationRecord
  belongs_to :property
  has_many :leases
  has_many :unit_amenities
  has_many :amenities, through: :unit_amenities
end
