class CombineDateTimeOnReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :res_date
    change_column :reservations, :res_time, :datetime
    rename_column :reservations, :res_time, :res_date_time
  end
end
