class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
  validates :content_body, length: {in: 50..250}, presence: true
  validates :rating, numericality: {only_integer: true }, presence: true
  validates_numericality_of :rating, less_than_or_equal_to: 5, greater_than_or_equal_to: 1
end 