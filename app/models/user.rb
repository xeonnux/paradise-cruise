class User < ApplicationRecord
  has_many :bookings
  has_many :cruises

  validates :username, uniqueness: true, presence: true
  validates :address, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
  validates :password, length: { minimum: 6 }
end
