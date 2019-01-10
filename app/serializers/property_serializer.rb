class PropertySerializer < ActiveModel::Serializer
  has_many :units
  attributes :id, :name, :address
end
