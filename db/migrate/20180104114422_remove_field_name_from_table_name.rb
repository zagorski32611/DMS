class RemoveFieldNameFromTableName < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :technician
    remove_column :users, :advisor
    remove_column :users, :manager
    remove_column :users, :super_user
  end
end
