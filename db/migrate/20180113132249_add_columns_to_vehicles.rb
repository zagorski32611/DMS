class AddColumnsToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :color, :string
    add_foreign_key :vehicles, :repair_orders

  end
end
