RSpec.describe "Build" do
  it "building" do
    10000.times do
      Taco.new(name: 'Steak')
    end
  end
end