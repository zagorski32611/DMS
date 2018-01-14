class Vehicle < ApplicationRecord

  #belongs_to :customer
  #belongs_to :vehicle
  has_many :repair_orders
  #belongs_to :customer

  validates :VIN, :presence => true, :uniqueness => true
end
