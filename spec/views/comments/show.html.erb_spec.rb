# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/show', type: :view do
  before do
    @comment = assign(:comment, Comment.create!(
                                  text: 'Text',
                                  user: nil
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Text/)
    expect(rendered).to match(//)
  end
end
