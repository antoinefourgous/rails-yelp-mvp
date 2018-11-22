class ReviewsController < ApplicationController

  def new

    @restaurant = Restaurant.find(params[:restaurant_id]) #comment on sais qu'il s'agit d'une id et non pas d'un rating par exemple
    @review = Review.new
  end

  def create
  @review = Review.new(review_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review.restaurant_id = @restaurant
  @review.save
  redirect_to restaurant_path(@restaurant)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[restaurant_id])
  end

private

  def review_params
    params.require(:review).permit(:content)
  end

end
