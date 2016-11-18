class ReviewsController < ApplicationController

  before_action :find_car, only: [ :new, :create ]

  def new
    @review = Review.new
  end

  def create
    @review = @car.reviews.build(review_params)
    @review.save
    redirect_to cars_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_car
    @car = Car.find(params[:car_id])
  end

end
