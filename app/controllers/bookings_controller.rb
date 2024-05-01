class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
  end

  def create
    @planet = Planet.find(params[:id])
    raise
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    @booking.visitor = current_user
    # @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      redirect_to root_path
      # render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
