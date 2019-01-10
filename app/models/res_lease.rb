class ResLease < ApplicationRecord
  belongs_to :lease
  belongs_to :resident
end
