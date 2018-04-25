class ChangeReairOrderTable < ActiveRecord::Migration[5.1]
  def change
    change_column :repair_orders, :line, :text
  end
end
