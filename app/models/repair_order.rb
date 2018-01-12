class RepairOrder < ApplicationRecord

  attr_accessor :VIN, :year, :make, :model, :window_tag
  validates :VIN, presence: true
  validates :year, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :window_tag, presence: true





#has_one :user, through: :assignments
#has_one :customer
#has_one :vehicle

end
