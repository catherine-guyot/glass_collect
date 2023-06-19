class Review < ApplicationRecord
  belongs_to :deposit
  belongs_to :user
end
