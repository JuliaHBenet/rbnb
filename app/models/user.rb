class User < ApplicationRecord
  belongs_to :registration
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :owner, presence: true, on: :update
end
