class PlanetsController < ApplicationController
  before_action :show

  def show
  end

  private

  def set_planet
    @planet = Planets.find[:id]
  end
end
