class CombineCustomersandVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :vin, :string
    add_column :customers, :year, :string
    add_column :customers, :make, :string
    add_column :customers, :model, :string
    add_column :customers, :trim, :string
    add_column :customers, :miles, :string
    add_column :customers, :color, :string
    add_column :customers, :license_plate, :string
  end
  
  def self.up
    execute "INSERT INTO customers (VIN year make model trim miles color license_plate) SELECT (VIN year make model trim miles color license_plate) FROM customers;"
    drop_table :vehicles
  end

  def self.down
    raise IrreversibleMigration
  end
end
