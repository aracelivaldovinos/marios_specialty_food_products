class Product < ApplicationRecord
  has_many :reviews
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  before_save(:titleize_product)
  private 
    def titleize_product
      self.name = self.name.titleize
    end 
end 