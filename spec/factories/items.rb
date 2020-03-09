FactoryBot.define do
  factory :item do
    name { "MyString" }
    city { "MyString" }
    year { "MyString" }
    type { nil }
    photo { nil }
    user { nil }
    comment { nil }
    price_current { "9.99" }
    price_purchase { "9.99" }
  end
end
