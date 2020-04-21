# frozen_string_literal: true

class User < ApplicationRecord
  has_many :items
  has_many :comments
  has_many :photos

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :email, :role, presence: true
  validates :name, length: { maximum: 22 }, format: { with: USERNAME_REGEXP }
  validates :email, format: { with: EMAIL_REGEXP }
  validates :role, inclusion: { in: %w[user admin] }
end
