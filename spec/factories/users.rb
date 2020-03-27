FactoryBot.define do
  factory :user do
    name {"satou"}
    sequence(:email) { |n| "satou#{n}@example.com"}
    password {"password"}
  end
end
