class UnitSerializer < ActiveModel::Serializer
  belongs_to :property
  has_many :leases
  has_many :amenities, through: :unit_amenities
  attributes :id, :number, :layout_type, :floor, :square_footage, :line, :floorplan, :status, :market_rent
end
