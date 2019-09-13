require 'rails_helper'

RSpec.describe 'Adding tacos to the cart' do
  include ActionView::Helpers::NumberHelper

  it 'adds tacos to the cart' do
    sour_cream = create(:ingredient)
    create(:user, allergies: [sour_cream])
    first_taco = create(:taco, price: 123)
    second_taco = create(:taco, price: 123)
    cart = create(:cart)

    patch cart_path(cart), params: { cart: { menu_item_ids: [first_taco.id, second_taco.id] } }
    cart.reload

    expect(cart.menu_items.length).to eq(2)
  end

  it 'prevents tacos with allergens from being added to the cart' do
    sour_cream = create(:ingredient)
    create(:user, allergies: [sour_cream])
    first_taco = create(:taco, ingredients: [sour_cream])
    cart = create(:cart)

    patch cart_path(cart), params: { cart: { menu_item_ids: [first_taco.id] } }

    expect(cart.menu_items.length).to eq(0)
  end

  it "calculates the total for the tacos that the user has added to their cart" do
    first_taco = create(:taco, name: 'Steak', price: 123)
    second_taco = create(:taco, name: 'Shirmp', price: 456)
    cart = create(:cart)
    user = create(:user)

    patch cart_path(cart), params: { cart: { menu_item_ids: [first_taco.id, second_taco.id] } }
    get root_path

    total = css_select("[data-id='cart.total']")
    expect(total.text).to eq(format_price(first_taco.price + second_taco.price - user.discount))
  end

  it "displays the price as $0 when the user hasn't added any tacos to their cart" do
    cart = create(:cart)
    user = create(:user)

    get root_path

    total = css_select("[data-id='cart.total']")
    expect(total.text).to eq(format_price(0))
  end

  it "gives GOLD users a $5 discount" do
    verify_discount(membership: "GOLD", amount: 500)
  end

  it "gives SILVER users a $2 discount" do
    verify_discount(membership: "SILVER", amount: 200)
  end

  it "gives BRONSE users a $1 discount" do
    verify_discount(membership: "BRONZE", amount: 100)
  end

  def format_price(price)
    number_to_currency((price / 100.00).round(2))
  end

  def verify_discount(membership:, amount:)
    cart = create(:cart)
    user = create(:user, membership: membership)
    first_taco = create(:taco, price: 1099)
    second_taco = create(:taco, price: 1199)
    patch cart_path(cart), params: { cart: { menu_item_ids: [first_taco.id, second_taco.id] } }

    get root_path

    total = css_select("[data-id='cart.total']")
    expect(total.text).to eq(format_price(first_taco.price + second_taco.price - amount))
  end
end