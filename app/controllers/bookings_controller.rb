class BookingsController < ApplicationController

  def index
    @cruise = Cruise.find(params[:id])
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @cruise = Cruise.find(params[:cruise_id])
    @booking = Booking.new(booking_params)
    @booking.schedule_date = Date.new
    @booking.available_seats = @cruise.capacity
    @booking.cruise = @cruise
    @booking.user = current_user
    if @booking.save
      flash[:notice] = 'Booking has been successfully recorded'
      redirect_to cruises_path
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
    params.require(:booking).permit(:total_price)
  end
end
