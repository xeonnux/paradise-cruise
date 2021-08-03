class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :cruises

  # validates :username, uniqueness: true, presence: true
  # validates :phone_number, uniqueness: true, presence: true, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed."}

  # validates :address, presence: true
  # validates :email, format: { with: /\A.*@.*\.com\z/ }
  # validates :password, length: { minimum: 6 }
end
