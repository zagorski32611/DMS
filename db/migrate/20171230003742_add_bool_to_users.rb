class AddBoolToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :technician, :boolean, default: true
    add_column :users, :advisor, :boolean, default: false
    add_column :users, :manager, :boolean, default: false
    add_column :users, :super_user, :boolean, default: false
  end
end
