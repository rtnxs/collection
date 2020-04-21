# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    association :user
    association :type

    name { Faker::Name.name[0..12] }
    city { Faker::Address.city }
    year { Faker::Date.backward(days: 2) }
    price_current { Faker::Number.decimal(l_digits: 2) }
    price_purchase { Faker::Number.decimal(l_digits: 2) }
  end
end
