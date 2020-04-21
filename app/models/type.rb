# frozen_string_literal: true

class Type < ApplicationRecord
  has_many :items

  validates :name, presence: true, length: { maximum: 22 }, format: { with: USERNAME_REGEXP }
end
