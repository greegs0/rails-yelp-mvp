class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      @restaurant = Restaurant.find(params[:restaurant_id])
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  def destroy
    review = Review.find(params[:id])
    restaurant = review.restaurant
    review.destroy
    redirect_to restaurant_path(restaurant)
  end


  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
