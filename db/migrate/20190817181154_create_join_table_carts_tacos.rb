class CreateJoinTableCartsTacos < ActiveRecord::Migration[5.2]
  def change
    create_join_table :carts, :tacos do |t|
      t.index [:cart_id, :taco_id]
      t.index [:taco_id, :cart_id]
    end
  end
end
