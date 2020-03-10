# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'photos/index', type: :view do
  before do
    assign(:photos, [
             Photo.create!(
               photo_url: 'Photo Url'
             ),
             Photo.create!(
               photo_url: 'Photo Url'
             )
           ])
  end

  it 'renders a list of photos' do
    render
    assert_select 'tr>td', text: 'Photo Url'.to_s, count: 2
  end
end
