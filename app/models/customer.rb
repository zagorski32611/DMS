class Customer < ApplicationRecord
  has_many :vehicles
  has_many :repair_orders
  
end


