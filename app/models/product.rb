class Product < ApplicationRecord
  has_many :reviews
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}


  scope :us_location, -> { where(country_of_origin: "United States of America")}
  


  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost, products.country_of_origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(10)
    )}

  
  # Product.select("products.name, products.cost, count(reviews.id) as reviews_count").joins(:reviews).group("products.id").order("reviews_count DESC").limit(10)


  before_save(:titleize_product)
  private 
    def titleize_product
      self.name = self.name.titleize
    end 
end 