class Booking < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  def total_price
    self.total_price = booking.pet.daily_price * (((end_date - start_date).to_i) - 1)
    self.save
  end
end
