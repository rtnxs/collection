# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { expect(user).to be_valid }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_length_of(:name).is_at_most(22) }

  it { is_expected.to validate_inclusion_of(:role).in_array(%w[user admin]) }

  it { is_expected.to allow_value('Супер Пользователь').for(:name) }
  it { is_expected.not_to allow_value('@Супер Пользователь?').for(:name) }
  it { is_expected.not_to allow_value('Супер "Пользователь"').for(:name) }
  it { is_expected.not_to allow_value('!@#$%^&*()/"][{}?`~').for(:name) }

  it { is_expected.to allow_value('my_email@ya.ru').for(:email) }
  it { is_expected.not_to allow_value('@my_email@ya.ru').for(:email) }
  it { is_expected.not_to allow_value('my_email_ya.ru').for(:email) }
  it { is_expected.not_to allow_value('почта: "my_email@ya.ru"').for(:email) }
  it { is_expected.not_to allow_value('!@#$%^&*()/"][{}?`~').for(:email) }
end
