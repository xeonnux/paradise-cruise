class Cruise < ApplicationRecord
  belongs_to :user
  has_many   :bookings

  validates :name, uniqueness: true, presence: true
  validates :location, :capacity, :duration_of_cruise, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
end
