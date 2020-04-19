# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name_with_middle[0..21] }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    avatar { Faker::Avatar.image }
    role { 'user' }

    factory :admin_user, parent: :user do
      role { 'admin' }
    end
  end
end
