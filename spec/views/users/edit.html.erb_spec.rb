# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  before do
    @user = assign(:user, User.create!(
                            name:   'MyString',
                            avatar: 'MyString',
                            role:   'MyString'
                          ))
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post' do
      assert_select 'input[name=?]', 'user[name]'

      assert_select 'input[name=?]', 'user[avatar]'

      assert_select 'input[name=?]', 'user[role]'
    end
  end
end
