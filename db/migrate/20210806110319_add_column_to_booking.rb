class AddColumnToBooking < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :schedule_date
    add_column :cruises, :duration_of_cruise, :string
    add_column :bookings, :schedule_date, :string
  end
end
