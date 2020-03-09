require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      name: "MyString",
      city: "MyString",
      year: "MyString",
      type: nil,
      photo: nil,
      user: nil,
      comment: nil,
      price_current: "9.99",
      price_purchase: "9.99"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[city]"

      assert_select "input[name=?]", "item[year]"

      assert_select "input[name=?]", "item[type_id]"

      assert_select "input[name=?]", "item[photo_id]"

      assert_select "input[name=?]", "item[user_id]"

      assert_select "input[name=?]", "item[comment_id]"

      assert_select "input[name=?]", "item[price_current]"

      assert_select "input[name=?]", "item[price_purchase]"
    end
  end
end
