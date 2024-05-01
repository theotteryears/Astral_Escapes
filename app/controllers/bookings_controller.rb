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
    # @booking.user = current_user
    # respond_to do |format|
    if @booking.save
        redirect_to bookings_path
      # else
        # render(partial: "shared/form", formats: :erb, locals: {planet: @planet, booking: @booking})
        # render :new, status: :unprocessable_entity
        # format.html { redirect_to root_path }
        # format.json
      # else
        # format.html { render "bookings/new", status: :unprocessable_entity}
        # format.json
      end
  end

  def dashboard

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
