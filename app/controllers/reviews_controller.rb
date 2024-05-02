class ReviewsController < ApplicationController
  def new
    @planet = Planet.find(params[:planet_id])
    @review = Review.new
  end
end
