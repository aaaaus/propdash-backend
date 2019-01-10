class Lease < ApplicationRecord
  belongs_to :unit
  has_many :res_leases
  has_many :residents, through: :res_leases
end
