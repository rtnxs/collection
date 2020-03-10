# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'photos/new', type: :view do
  before do
    assign(:photo, Photo.new(
                     photo_url: 'MyString'
                   ))
  end

  it 'renders new photo form' do
    render

    assert_select 'form[action=?][method=?]', photos_path, 'post' do
      assert_select 'input[name=?]', 'photo[photo_url]'
    end
  end
end
