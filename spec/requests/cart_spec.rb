require 'rails_helper'

RSpec.describe 'Adding tacos to the cart' do
  it 'adds tacos to the cart' do
    sour_cream = Ingredient.create
    User.create(allergies: [sour_cream])
    first_taco = Taco.create
    second_taco = Taco.create
    cart = Cart.create

    patch cart_path(cart), params: { cart: { taco_ids: [first_taco.id, second_taco.id] } }
    cart.reload

    expect(cart.tacos.length).to eq(2)
  end

  it 'prevents tacos with allergens from being added to the cart' do
    sour_cream = Ingredient.create
    User.create(allergies: [sour_cream])
    first_taco = Taco.create(ingredients: [sour_cream])
    cart = Cart.create

    patch cart_path(cart), params: { cart: { taco_ids: [first_taco.id] } }

    expect(cart.tacos.length).to eq(0)
  end
end