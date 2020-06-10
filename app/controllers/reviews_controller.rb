class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @newreview = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params_review)
    @review.restaurant_id = @restaurant.id
    @review.save

    redirect_to restaurant_path(@restaurant)
  end

  private

  def params_review
    params.require(:review).permit(:content, :rating)
  end

end
