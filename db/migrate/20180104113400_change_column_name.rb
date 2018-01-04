class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :last_name, :last_name_string if column_exists?(:users, :last_name_string) && !column_exists?(:users, :last_name)
  end
end
