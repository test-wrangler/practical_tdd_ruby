require "rails_helper"

RSpec.describe Cart do
  describe "#add" do
    it "adds a taco to the cart when it doesn't contain ingredients that the user is allergic to" do
      sour_cream = Ingredient.create(name: 'Sour Cream')
      flour = Ingredient.create(name: 'Flour')
      user = User.create(allergies: [sour_cream])
      taco = Taco.create(ingredients: [flour])
      cart = Cart.create

      cart.tacos = [taco]
      cart.save
      cart.reload
      
      expect(cart.tacos).to include(taco)
    end

    it "prevents adding a taco to the cart that the user is allergic to" do
      sour_cream = Ingredient.create(name: 'Sour Cream')
      user = User.create(allergies: [sour_cream])
      taco_name = 'Steak and Shrimp'
      taco = Taco.create(name: taco_name, ingredients: [sour_cream])
      cart = Cart.create

      cart.tacos = [taco]
      cart.save
      cart.reload

      expect(cart.tacos).to include(taco)

      expect(cart.errors.first).to eq([:tacos, "User is allergic to #{taco_name} taco"])
    end
  end
end