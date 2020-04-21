# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_many :comments
  has_many :photos

  validates :name, :city, :year, presence: true, length: { maximum: 22 }
end
