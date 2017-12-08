class Pet < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :bookings
  validates :name, presence: true
  validates :category, presence: true
  validates_numericality_of :daily_price, only_integer: true
  has_attachment :photo
end
