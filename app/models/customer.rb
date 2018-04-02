class Customer < ApplicationRecord
  has_many :vehicles
  has_many :repair_orders
  # validates # use all params here!
  
  def self.search(term)
    if term
      where('last_name LIKE ? OR phone_number1 LIKE ? OR phone_number2 LIKE ? OR 
             email LIKE ? OR email2 LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%",
             "%#{term}%",  "%#{term}%")
    else
      all
    end
  end
 end
