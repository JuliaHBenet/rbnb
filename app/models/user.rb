class User < ApplicationRecord
  belongs_to :registration
  has_many :pets
  has_many :bookings
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
end
