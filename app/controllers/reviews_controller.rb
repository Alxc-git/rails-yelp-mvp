class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant_id = @restaurant.id
    @review.save
    redirect_to restaurant_path(@restaurant)

  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
