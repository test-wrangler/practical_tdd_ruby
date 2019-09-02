class ChangeTacosToMenuItems < ActiveRecord::Migration[5.2]
  def change
    rename_table :tacos, :menu_items
    add_column :menu_items, :type, :text
    rename_table :carts_tacos, :carts_menu_items
    rename_column :carts_menu_items, :taco_id, :menu_item_id
    rename_table :ingredients_tacos, :ingredients_menu_items
    rename_column :ingredients_menu_items, :taco_id, :menu_item_id
  end
end
