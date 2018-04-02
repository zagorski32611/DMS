class Vehicle < ApplicationRecord
  
  #has_many :repair_orders
  #belongs_to :customer
  validates :VIN, :presence => true, :uniqueness => true

  def self.search(term)
    if term
      where('VIN LIKE ? OR make LIKE ? OR model LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%")
    else
      all
    end
  end
end
