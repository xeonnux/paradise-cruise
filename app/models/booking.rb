class Booking < ApplicationRecord
  belongs_to :cruise
  belongs_to :user

  has_many :users
  has_many :cruises

  validates :total_price, :schedule_date, :available_seats, presence: true
end
