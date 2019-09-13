class Cart < ApplicationRecord
  has_and_belongs_to_many :menu_items
  before_validation :ensure_no_allergies

  def ensure_no_allergies
    menu_items.each do |menu_item|
      if allergic?(User.first, menu_item)
        errors.add(:menu_items, "User is allergic to #{menu_item.name} menu item")
      end
    end
  end

  def total
    return 0.00 if menu_items.empty?
    sum = menu_items.collect(&:price).reduce(&:+) - User.first.discount
    sum / 100.00
  end

  private
  def allergic?(user, menu_item)
    (menu_item.ingredients & user.allergies).present?
  end
end