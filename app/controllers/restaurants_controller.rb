class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show

    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @new_restaurant = Restaurant.new(restaurant_params)
    @new_restaurant.save
    redirect_to restaurant_path(@new_restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
