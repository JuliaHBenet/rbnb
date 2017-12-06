class Pet < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :category, presence: true
  validates_numericality_of :daily_price, only_integer: true
end
