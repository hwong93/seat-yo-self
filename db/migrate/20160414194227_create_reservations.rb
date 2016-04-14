class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :res_date
      t.time :res_time
      t.integer :seats
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
