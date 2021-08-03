class BookingsController < ApplicationController
  def new
    @cruise = Cruise.find(params[:cruise_id])
    @booking = Booking.new
  end

  def create
    @cruise = Cruise.find(params[:cruise_id])
    @booking = Booking.new(booking_params)
    @booking.cruise = @cruise
    if @booking.save
      redirect_to booking_path(@booking)
    else
      @bookings = @cruise.bookings
      render 'cruises/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @cruise = Cruise.find(@booking.cruise_id)
    if Booking.delete(params[:id]).positive?
      flash[:success] = 'Booking has been cancelled'
    else
      flash[:error] = 'Sorry something went wrong, please try again'
    end
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:total_price, :schedule_date, :available_seats)
  end
end
