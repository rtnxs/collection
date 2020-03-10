# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/new', type: :view do
  before do
    assign(:comment, Comment.new(
                       text: 'MyString',
                       user: nil
                     ))
  end

  it 'renders new comment form' do
    render

    assert_select 'form[action=?][method=?]', comments_path, 'post' do
      assert_select 'input[name=?]', 'comment[text]'

      assert_select 'input[name=?]', 'comment[user_id]'
    end
  end
end
