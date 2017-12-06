class AddDefaultToBookings < ActiveRecord::Migration[5.0]
  def change
    change_column_default :bookings, :status, "pending"
  end
end
