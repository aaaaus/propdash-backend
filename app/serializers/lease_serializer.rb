class LeaseSerializer < ActiveModel::Serializer
  belongs_to :unit
  has_many :residents, through: :res_leases
  attributes :id, :unit_id, :start_date, :end_date, :rent, :status, :account_balance, :in_legal
end
