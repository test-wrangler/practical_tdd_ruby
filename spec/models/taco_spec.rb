require "rails_helper"

RSpec.describe "taco name" do
  it "returns the taco's name" do
    name = 'Steak and Cilantro'

    taco = Taco.new(name: name)

    expect(taco.name).to eq(name)
  end
end