class AddPlateToRepairOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :repair_orders, :license_plate, :string
  end
end
