FactoryBot.define do
  factory :taco do
    sequence(:name) do |n|
      "Taco #{n}"
    end
    price { 123 }
  end
end