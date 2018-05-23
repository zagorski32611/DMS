class AddColumnsToParts < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :cost_per_unit,  :string
    add_column :parts, :retail_price,   :string
    add_column :parts, :in_stock,       :string
  end
end
