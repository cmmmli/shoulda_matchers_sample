FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "Sample user#{n}" }
    age 20
    gendar 'male'
    email "testemail@mail.com"
  end
end
