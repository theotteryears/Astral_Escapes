class ReviewsController < ApplicationController
before_action :set_planet, only: %i[new create]

  def new
    @planet = Planet.find(params[:planet_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    review.planet = @planet
    if review.save
    redirect_to planet_path(@planet)
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
