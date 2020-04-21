# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    # name { Faker::Name.name[0..12] }
    name { 'Alesha' }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    avatar { Faker::Avatar.image }
    role { 'user' }

    factory :admin_user, parent: :user do
      role { 'admin' }
    end
  end
end
