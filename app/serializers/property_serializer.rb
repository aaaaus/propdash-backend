class PropertySerializer < ActiveModel::Serializer
  has_many :units, include_nested_associations: true
  attributes :id, :name, :address
end
