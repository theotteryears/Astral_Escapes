class ReviewsController < ApplicationController
before_action :set_planet, only: %i[new create]

  def new
    @booking = @planet.bookings.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = @planet.bookings.find(params[:booking_id])
    @review = @booking.reviews.build(review_params)
    review.planet = @planet
    if review.save
      redirect_to [@planet, @booking]
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
