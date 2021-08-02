class Booking < ApplicationRecord
  belongs_to :cruise
  belongs_to :user
end
