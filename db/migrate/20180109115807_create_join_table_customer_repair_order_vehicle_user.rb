class CreateJoinTableCustomerRepairOrderVehicleUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :customers, :vehicles do |t|
      t.index :customer_id
      t.index :vehile_id
    end
  end
end
