class AddMembershipToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :membership, :text
  end
end
