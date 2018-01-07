class CreateRepairOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :repair_orders do |t|
      t.timestamps

    end
  end
end
