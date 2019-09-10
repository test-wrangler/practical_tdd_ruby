require "rails_helper"

RSpec.describe Cart do
  describe "#add" do
    it "adds a taco to the cart when it doesn't contain ingredients that the user is allergic to" do
      sour_cream = create(:ingredient, name: 'Sour Cream')
      flour = create(:ingredient, name: 'Flour')
      user = create(:user, allergies: [sour_cream])
      taco = create(:taco, ingredients: [flour])
      cart = create(:cart)

      cart.menu_items = [taco]
      cart.save
      cart.reload
      
      expect(cart.menu_items).to include(taco)
    end

    it "prevents adding a taco to the cart that the user is allergic to" do
      sour_cream = create(:ingredient, name: 'Sour Cream')
      user = create(:user, allergies: [sour_cream])
      taco_name = 'Steak and Shrimp'
      taco = create(:taco, name: taco_name, ingredients: [sour_cream])
      cart = create(:cart)

      cart.menu_items = [taco]
      cart.save
      cart.reload

      expect(cart.menu_items).to include(taco)
      expect(cart.errors.first).to eq([:menu_items, "User is allergic to #{taco_name} menu item"])
    end
  end
end