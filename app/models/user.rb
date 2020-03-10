# frozen_string_literal: true

class User < ApplicationRecord
  has_many :item
  has_many :comments
  has_many :photos

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
