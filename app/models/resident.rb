class Resident < ApplicationRecord
  has_many :res_leases
  has_many :leases, through: :res_leases
end
