require "rails_helper"

RSpec.describe Cart do
  describe "#add" do
    it "adds a taco to the cart when it doesn't contain ingredients that the user is allergic to" do
      user = User.new
      allow(user).to receive(:allergies) { 'Sour Cream' }
      allow(User).to receive(:first) { user }
      taco = Taco.new
      allow(taco).to receive(:id) { 1 }
      allow(taco).to receive(:ingredients) { 'Flour' }
      cart = Cart.create

      cart.tacos = [taco]
      cart.save
      cart.reload
      
      expect(cart.tacos).to include(taco)
    end

    it "prevents adding a taco to the cart that the user is allergic to" do
      ingredients = 'Flour'
      taco_name = 'Steak and Shrimp'
      user = User.new
      allow(user).to receive(:allergies) { ingredients }
      allow(User).to receive(:first) { user }
      taco = Taco.new
      allow(taco).to receive(:ingredients) { ingredients }
      allow(taco).to receive(:name) { taco_name }
      cart = Cart.create

      cart.tacos = [taco]
      cart.save

      expect(cart.errors.first).to eq([:tacos, "User is allergic to #{taco_name} taco"])
    end
  end
end