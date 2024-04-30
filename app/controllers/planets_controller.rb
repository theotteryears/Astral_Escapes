class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_planet, only: :show

  def index
    @planets = Planet.all
  end

  def show
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save!
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :details, :location, :distance, :price_per_night, :planet_img)
  end
end
