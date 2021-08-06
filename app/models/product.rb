class Product < ApplicationRecord
  has_many :reviews

  before_save(:titleize_product)
  private 
    def titleize_product
      self.name = self.name.titleize
    end 
end 