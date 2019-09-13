class User < ApplicationRecord
  has_and_belongs_to_many :allergies, class_name: :Ingredient

  def discount
    case membership
    when "GOLD" then 500
    when "SILVER" then 200
    when "BRONZE" then 100
    else raise "Unrecognized membership level"
    end
  end
end