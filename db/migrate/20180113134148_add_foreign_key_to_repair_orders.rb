class AddForeignKeyToRepairOrders < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :repair_orders, :vehicles
  end
end
