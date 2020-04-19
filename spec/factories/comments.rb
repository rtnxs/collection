# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    association :user
    text { Faker::String.random(length: [1, (2..5), [3, 6], nil]) }
  end
end
