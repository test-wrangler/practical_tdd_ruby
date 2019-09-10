class MenuItem < ApplicationRecord
  has_and_belongs_to_many :carts
  has_and_belongs_to_many :ingredients
  validates :price, numericality: { only_integer: true }
  validates_presence_of :name
end