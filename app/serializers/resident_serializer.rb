class ResidentSerializer < ActiveModel::Serializer
  has_many :leases, through: :res_leases
  attributes :id, :first_name, :last_name, :email, :ssn, :date_of_birth
end
