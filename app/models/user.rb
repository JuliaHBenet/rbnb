class User < ApplicationRecord
  belongs_to :registration
  has_many :pets
  has_many :bookings
  has_attachment :photo
  validates :first_name, :last_name, presence: true, on: :update



end
