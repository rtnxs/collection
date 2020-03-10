# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_many :comments
  has_many :photos
end
