class Review < ApplicationRecord
  belongs_to :deposit
  belongs_to :user
  validates :comment, length: {minimum: 10}
  validates :rating, presence: true
end

# , optional: true
