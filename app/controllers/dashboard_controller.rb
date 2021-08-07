class DashboardController < ApplicationController
  def index
    @recent_products= Product.three_most_recent

    @panama_location = Product.panama_location
    @nicaragua_location = Product.nicaragua_location
    @el_salvador_location = Product.el_salvador_location
    @brazil_location = Product.brazil_location

    @most_reviews = Product.most_reviews
    render :index
    
  end
end
