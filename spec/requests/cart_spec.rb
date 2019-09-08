require 'rails_helper'

RSpec.describe 'Adding tacos to the cart' do
  include ActionView::Helpers::NumberHelper

  it 'adds tacos to the cart' do
    sour_cream = Ingredient.create!
    User.create!(allergies: [sour_cream])
    first_taco = Taco.create!(price: 123)
    second_taco = Taco.create!(price: 123)
    cart = Cart.create!

    patch cart_path(cart), params: { cart: { menu_item_ids: [first_taco.id, second_taco.id] } }
    cart.reload

    expect(cart.menu_items.length).to eq(2)
  end

  it 'prevents tacos with allergens from being added to the cart' do
    sour_cream = Ingredient.create!
    User.create!(allergies: [sour_cream])
    first_taco = Taco.create!(ingredients: [sour_cream])
    cart = Cart.create!

    patch cart_path(cart), params: { cart: { menu_item_ids: [first_taco.id] } }

    expect(cart.menu_items.length).to eq(0)
  end

  it "calculates the total for the tacos that the user has added to their cart" do
    first_taco = Taco.create!(name: 'Steak', price: 123)
    second_taco = Taco.create!(name: 'Shirmp', price: 456)
    cart = Cart.create!
    user = User.create!

    patch cart_path(cart), params: { cart: { menu_item_ids: [first_taco.id, second_taco.id] } }
    get root_path

    total = css_select("[data-id='cart.total']")
    expect(total.text).to eq(format_price(first_taco.price + second_taco.price))
  end

  it "displays the price as $0 when the user hasn't added any tacos to their cart" do
    cart = Cart.create!
    user = User.create!

    get root_path

    total = css_select("[data-id='cart.total']")
    expect(total.text).to eq(format_price(0))
  end

  def format_price(price)
    number_to_currency((price / 100.00).round(2))
  end
end