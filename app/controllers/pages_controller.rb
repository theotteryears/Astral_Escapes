class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    planets = Planet.all
    @planets = planets.shuffle.take(3)
  end
end
