# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    text { 'MyString' }
    user { nil }
  end
end
