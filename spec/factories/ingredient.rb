FactoryBot.define do
  factory :ingredient do
    sequence(:name) do |n|
      "Ingredient #{n}"
    end
  end
end