class LeaseSerializer < ActiveModel::Serializer
  belongs_to :unit
  attributes :id, :unit_id, :start_date, :end_date, :rent, :status, :account_balance, :in_legal
end
