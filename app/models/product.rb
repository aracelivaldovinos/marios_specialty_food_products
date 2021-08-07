class Product < ApplicationRecord
  has_many :reviews
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :panama_location, -> { where(country_of_origin: "Chiriqui, Panama")}
  scope :nicaragua_location, -> { where(country_of_origin: "Madriz, Nicaragua")}
  scope :el_salvador_location, -> { where(country_of_origin: "Tecapa-Chinameca, El Salvador")}
  scope :brazil_location, -> { where(country_of_origin: "Sul Minas, Brazil")}


  before_save(:titleize_product)
  private 
    def titleize_product
      self.name = self.name.titleize
    end 
end 