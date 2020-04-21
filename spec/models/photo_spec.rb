# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Photo, type: :model do
  let(:photo) { create(:photo) }

  it { expect(photo).to be_valid }
  it { is_expected.to validate_presence_of(:photo_url) }
  it { is_expected.to allow_value(Faker::Avatar.image).for(:photo_url) }
  it { is_expected.not_to allow_value('http:||qwe.ru').for(:photo_url) }
end
