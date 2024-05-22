class ReviewsController < ApplicationController
  # app/controllers/reviews_controller.rb
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to @restaurant, notice: 'Review added successfully.'
    else
      render 'restaurants/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
