require 'rails_helper'

RSpec.describe "photos/show", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      photo_url: "Photo Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Photo Url/)
  end
end
