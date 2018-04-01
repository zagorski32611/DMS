class Vehicle < ApplicationRecord
  
  belongs_to :vehicle
  has_many :repair_orders
  belongs_to :customer
  validates :VIN, :presence => true, :uniqueness => true

  def self.search(term)
    if term
      where('make LIKE ?', "%#{term}%")
    else
      all
    end
  end
end
