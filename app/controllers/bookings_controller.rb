class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit]

  def new
    @booking = Booking.new
  end

  def create
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    @booking.visitor = current_user
    # @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
