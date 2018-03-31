class ChangeColumnsToString < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :phone_number1, :string
    change_column :customers, :phone_number2, :string
  end
end
