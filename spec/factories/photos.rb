# frozen_string_literal: true

FactoryBot.define do
  factory :photo do
    association :user
    association :item
    photo_url { Faker::Avatar.image }
  end
end
