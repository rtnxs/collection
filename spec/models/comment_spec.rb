# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { create(:comment) }

  it { expect(comment).to be_valid }
  it { is_expected.to validate_presence_of(:text) }
  it { is_expected.to validate_length_of(:text).is_at_most(255) }
  it { is_expected.to allow_value(Faker::String.random(length: [2, [1..10]])).for(:text) }
end
