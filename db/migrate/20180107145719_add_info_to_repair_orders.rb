class AddInfoToRepairOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :repair_orders, :VIN, :string
    add_column :repair_orders, :year, :integer
    add_column :repair_orders, :make, :string
    add_column :repair_orders, :model, :string
    add_column :repair_orders, :trim, :string
    add_column :repair_orders, :miles, :integer
    add_column :repair_orders, :color, :string
    add_column :repair_orders, :window_tag, :string
    add_column :repair_orders, :line, :text
    add_column :repair_orders, :due_date, :datetime
    add_column :repair_orders, :update_time, :datetime
  end
end
