class ReviewsController < ApplicationController
before_action :set_planet, only: %i[new create]

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Reviews.new(review_params)
    @review.planet = @planet
    if @review.save
      redirect_to planets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
