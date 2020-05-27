# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    association :user
    association :item
    text { Faker::String.random(length: 10) }
  end
end
