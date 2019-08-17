class Cart < ApplicationRecord
  has_and_belongs_to_many :tacos
  before_validation :ensure_no_allergies

  def ensure_no_allergies
    tacos.each do |taco|
      if allergic?(User.first, taco)
        errors.add(:tacos, "User is allergic to #{taco.name} taco")
      end
    end
  end

  private
  def allergic?(user, taco)
    taco_ingredients = taco.ingredients.split(',')
    allergies = user.allergies.split(',')
    (taco_ingredients & allergies).present?
  end
end