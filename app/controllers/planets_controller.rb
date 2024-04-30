class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_planet, only: :show

  def index
    @planets = Planet.all
  end

  def show
  end


  private

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
