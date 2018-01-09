class AddInfoToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :cell_phone, :string
    add_column :customers, :home_phone, :string
    add_column :customers, :street_address, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :zip_code, :string
    add_column :customers, :email, :string
    add_column :customers, :email2, :string
  end
end
