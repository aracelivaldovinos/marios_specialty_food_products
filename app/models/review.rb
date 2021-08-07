class Review < ApplicationRecord
  belongs_to :product
  scope :highest_ratings, -> { where(rating: 5)}
end 