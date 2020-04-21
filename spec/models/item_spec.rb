# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { create(:item) }

  it { expect(item).to be_valid }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:year) }
  it { is_expected.to validate_length_of(:name).is_at_most(22) }
  it { is_expected.to validate_length_of(:city).is_at_most(22) }
  it { is_expected.to validate_length_of(:year).is_at_most(22) }
end
