class User < ApplicationRecord
  has_and_belongs_to_many :allergies, class_name: :Ingredient
end