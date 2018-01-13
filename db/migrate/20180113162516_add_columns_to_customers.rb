class AddColumnsToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :phone_number1, :integer
    add_column :customers, :phone_number2, :integer
    add_column :customers, :email,         :string
    add_column :customers, :email2,        :string
  end
end
