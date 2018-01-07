class RepairOrder < ApplicationRecord
  serialize :hash
  belongs_to :user
end
