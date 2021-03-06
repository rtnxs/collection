# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'photos/edit', type: :view do
  before do
    @photo = assign(:photo, Photo.create!(
                              photo_url: 'MyString'
                            ))
  end

  it 'renders the edit photo form' do
    render

    assert_select 'form[action=?][method=?]', photo_path(@photo), 'post' do
      assert_select 'input[name=?]', 'photo[photo_url]'
    end
  end
end
