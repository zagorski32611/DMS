class AddPlateToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :license_plate, :string
  end
end
