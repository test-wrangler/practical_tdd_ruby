require "rails_helper"

RSpec.describe "Adding tacos to the cart" do
  it "adds tacos to the cart" do
    user = User.create
    first_taco = Taco.create(name: 'Steak')
    second_taco = Taco.create(name: 'Shrimp')
    cart = Cart.create

    visit "http://localhost:3000"
    check first_taco.name
    check second_taco.name
    click_button "Update Cart"

    expect(page).to have_checked_field(first_taco.name)
    expect(page).to have_checked_field(second_taco.name)
  end

  it "prevents adding tacos that the user is allergic to" do
    sour_cream = Ingredient.create(name: "Sour Cream")
    User.create(allergies: [sour_cream])
    taco_name = "Steak"
    first_taco = Taco.create(name: taco_name, ingredients: [sour_cream])
    Cart.create

    visit "http://localhost:3000"
    check first_taco.name
    click_button "Update Cart"

    expect(page).to have_no_checked_field(first_taco.name)
    expect(page).to have_text("User is allergic to #{taco_name} menu item")
  end
end