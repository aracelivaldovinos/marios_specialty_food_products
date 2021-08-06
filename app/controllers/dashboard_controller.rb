class DashboardController < ApplicationController
  def index
    @recent_products= Product.three_most_recent
    render :index
  end
end
