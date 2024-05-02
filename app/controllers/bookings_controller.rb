class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
  end

  def create

    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    @booking.visitor = current_user
    if @booking.save
        redirect_to bookings_path
      else
        render 'planets/show', status: :unprocessable_entity
      end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def dashboard

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
