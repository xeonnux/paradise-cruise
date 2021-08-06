class AddColumnToBooking < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :schedule_date
    remove_column :cruises, :duration_of_cruise
    add_column :cruises, :duration_of_cruise, :string
    add_column :bookings, :schedule_date, :string
  end
end
