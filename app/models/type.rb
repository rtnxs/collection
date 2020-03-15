# frozen_string_literal: true

class Type < ApplicationRecord
  has_many :items

  validates :name, presence: true, length: { maximum: 12 }
end
