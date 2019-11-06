class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:create]

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @review.restaurant_id = params[:restaurant_id].to_i
    @review.save!
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id].to_i)
  end
end
