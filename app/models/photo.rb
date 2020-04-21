# frozen_string_literal: true

class Photo < ApplicationRecord
  belongs_to :item
  belongs_to :user

  validates :photo_url, presence: true, format: { with: URL_REGEXP }
end
