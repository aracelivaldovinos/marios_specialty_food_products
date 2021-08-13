class DashboardController < ApplicationController
  def index
    if current_user
      redirect_to products_path
    end 
    @recent_products= Product.three_most_recent
    @us_location = Product.us_location  
    @most_reviews = Product.most_reviews 
  end
end
