# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'items/index', type: :view do
  before do
    assign(:items, [
             Item.create!(
               name:           'Name',
               city:           'City',
               year:           'Year',
               type:           nil,
               photo:          nil,
               user:           nil,
               comment:        nil,
               price_current:  '9.99',
               price_purchase: '9.99'
             ),
             Item.create!(
               name:           'Name',
               city:           'City',
               year:           'Year',
               type:           nil,
               photo:          nil,
               user:           nil,
               comment:        nil,
               price_current:  '9.99',
               price_purchase: '9.99'
             )
           ])
  end

  it 'renders a list of items' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'City'.to_s, count: 2
    assert_select 'tr>td', text: 'Year'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
  end
end
