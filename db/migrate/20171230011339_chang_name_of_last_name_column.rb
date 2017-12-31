class ChangNameOfLastNameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :last_name_string, :last_name
  end
end
