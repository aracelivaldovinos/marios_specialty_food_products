class Review < ApplicationRecord
  belongs_to :product
  scope :highest_ratings, -> { where(rating: 5)}
  validates :author, presence: true
  validates :rating, presence: true
  validates :content_body, presence: true

  # validates :content_body, length: { minimum: 50 }
  validates :content_body, length: {in: 50..250}
  validates :rating, numericality: {only_integer: true }
  validates_numericality_of :rating, less_than_or_equal_to: 5, greater_than_or_equal_to: 1
end 