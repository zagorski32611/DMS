class AddCustomersTable < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :first_name,    :string
    add_column :customers, :last_name,     :string
    add_column :customers, :street,        :string
    add_column :customers, :city,          :string
    add_column :customers, :state,         :string
    add_column :customers, :zip,           :integer
    add_foreign_key :customers,            :vehicles
    add_foreign_key :customers,            :repair_orders
  end
end
