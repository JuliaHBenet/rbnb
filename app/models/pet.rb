class Pet < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :type, presence: true
  validates_numericality_of :daily_price, only_integer: true
end
