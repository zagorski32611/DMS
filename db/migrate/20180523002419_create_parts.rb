class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.text        :name
      t.text        :part_number
      t.text        :manufacturer
      t.text        :description
      t.timestamps
    end
  end
end
