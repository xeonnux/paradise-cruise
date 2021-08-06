class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @cruise = Cruise.find(params[:booking][:cruise_id])
    @booking = Booking.new(booking_params)
    @booking.schedule_date = get_booking_date(booking_params)
    @booking.available_seats = @cruise.capacity - Booking.all.count
    @booking.user = current_user
    if @booking.save
      flash[:notice] = 'Booking has been successfully recorded'
      redirect_to cruises_path
    else
      render 'cruises/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @cruise = Cruise.find(@booking.cruise_id)
    if Booking.delete(params[:id]).positive?
      flash[:notice] = "Your booking for #{@cruise.name} has been successfully cancelled !"
    else
      flash[:error] = 'Sorry something went wrong, please try again!'
    end
    redirect_to bookings_path
  end

  private

  def get_booking_date(params)
    "#{params["schedule_date(3i)"]}/#{params["schedule_date(2i)"]}/#{params["schedule_date(1i)"]}"
  end

  def booking_params
    params.require(:booking).permit(:total_price, :cruise_id, :schedule_date)
  end
end
