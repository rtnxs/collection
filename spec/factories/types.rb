# frozen_string_literal: true

FactoryBot.define do
  factory :type do
    name { Faker::Commerce.department[0..11] }
  end
end
