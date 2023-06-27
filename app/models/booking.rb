class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :deposit
  validates :number_of_bottles, :start_date, presence: true
  validates :number_of_bottles, numericality: { only_integer: true }, comparison: { greater_than: 0 }
end
