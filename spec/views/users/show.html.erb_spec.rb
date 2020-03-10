# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  before do
    @user = assign(:user, User.create!(
                            name:   'Name',
                            avatar: 'Avatar',
                            role:   'Role'
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/Role/)
  end
end
