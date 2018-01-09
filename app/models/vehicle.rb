class Vehicle < ApplicationRecord

  belongs_to :customer
  belongs_to :vehicle
  has_many :repair_orders

end
