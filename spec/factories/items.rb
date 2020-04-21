# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    association :user
    association :type

    name { Faker::Company.name[0..10] }
    city { Faker::Address.city }
    year { Faker::Date.backward(days: 2) }
    price_current { Faker::Number.decimal(l_digits: 2) }
    price_purchase { Faker::Number.decimal(l_digits: 2) }
  end
end
