class User < ApplicationRecord
  validates :username, uniqueness: true, length: { minimum: 3, maximum: 64 }, presence: true
  validates :email, uniqueness: true, length: { minimum: 5, maximum: 500 }, presence: true
  validates :password, length: { minimum: 8, maximum: 64 }, presence: true

  has_many :sessions
  has_many :tweets
end
