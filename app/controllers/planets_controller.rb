class PlanetsController < ApplicationController
  before_action :set_planet, only: :show

  def index
    @planets = Planet.all
  end

  def show
  end


  private

  def set_planet
    @planet = Planets.find[:id]
  end
end
