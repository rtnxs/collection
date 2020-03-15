# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_many :comments
  has_many :photos

  validates :name, :city, presence: true, length: { maximum: 40 }
  validates :year, presence: true
end
