class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @newrestaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    @restaurant.save

    redirect_to restaurants_path
  end

  # def edit <= NOT NEEDED FOR THIS EXERCISE
  # end

  # def update <= NOT NEEDED FOR THIS EXERCISE
  # end

  # def destroy <= NOT NEEDED FOR THIS EXERCISE
  # end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
