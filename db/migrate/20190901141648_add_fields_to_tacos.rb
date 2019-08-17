class AddFieldsToTacos < ActiveRecord::Migration[5.2]
  def change
    add_column :tacos, :ingredients, :text
    add_column :tacos, :name, :text
  end
end
