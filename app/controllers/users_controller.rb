class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = Booking.all
    @fidelity_point = 0
    @bookings.each do |booking|
      @fidelity_point += (booking.total_price / 100) * 10 if booking.user == current_user
    end
  end
end
