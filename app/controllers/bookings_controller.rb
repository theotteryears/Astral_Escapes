class BookingsController < ApplicationController

def index
  @bookings = Booking.all
  @booking = Booking.new
end

  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
  end

  def create
    @planet = Planet.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    @booking.visitor = current_user
    # @booking.user = current_user
    respond_to do |format|
      if @booking.save
        format.html { redirect_to root_path }
        format.json
      else
        format.html { render "bookings/new", status: :unprocessable_entity}
        format.json
      end
    end
  end

  def dashboard
    @booking = Booking.where(visitor: current_user)

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
