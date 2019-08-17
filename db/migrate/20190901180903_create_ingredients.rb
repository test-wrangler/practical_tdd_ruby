class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
    end

    create_join_table :ingredients, :tacos do |t|
      t.index [:ingredient_id, :taco_id]
      t.index [:taco_id, :ingredient_id]
    end

    create_join_table :ingredients, :users do |t|
      t.index [:ingredient_id, :user_id]
      t.index [:user_id, :ingredient_id]
    end

    remove_column :users, :allergies, :string
    remove_column :tacos, :ingredients, :string
  end
end
