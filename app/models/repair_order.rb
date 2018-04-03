class RepairOrder < ApplicationRecord
    has_one :user, through: :assignments
    has_one :customer
    # validates # Require Params here!

    def self.search(term)
        if term
            where(' window_tag LIKE ? OR color LIKE ? OR make LIKE ? OR VIN LIKE ? OR 
                due_date LIKE ? or update_time LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%",
                "%#{term}%", "%#{term}%", "%#{term}%")
        else
            all
        end
    end
end
