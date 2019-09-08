require "rails_helper"

RSpec.describe "Adding tacos to the cart" do
  include ActionView::Helpers::NumberHelper

  it "adds tacos to the cart" do
    user = User.create!
    first_taco = Taco.create!(name: 'Steak', price: 123)
    second_taco = Taco.create!(name: 'Shrimp', price: 456)
    cart = Cart.create!

    visit "/"
    check first_taco.name
    check second_taco.name
    click_button "Update Cart"

    expect(page).to have_checked_field(first_taco.name)
    expect(page).to have_checked_field(second_taco.name)
  end

  it "prevents adding tacos that the user is allergic to" do
    sour_cream = Ingredient.create!(name: "Sour Cream")
    User.create!(allergies: [sour_cream])
    taco_name = "Steak"
    first_taco = Taco.create!(name: taco_name, ingredients: [sour_cream])
    Cart.create!

    visit "/"
    check first_taco.name
    click_button "Update Cart"

    expect(page).to have_no_checked_field(first_taco.name)
    expect(page).to have_text("User is allergic to #{taco_name} menu item")
  end

  it "calculates the total for the tacos that the user has added to their cart", js: true do
    user = User.create
    first_taco = Taco.create!(name: 'Steak', price: 1099)
    second_taco = Taco.create!(name: 'Shrimp', price: 1199)
    Cart.create

    visit "/"
    expect(page).to have_text(format_price(0))
    check first_taco.name
    check second_taco.name
    click_button "Update Cart"

    expect(page).to have_text(format_price(first_taco.price + second_taco.price))
  end

  def format_price(price)
    number_to_currency((price / 100.00).round(2))
  end
end