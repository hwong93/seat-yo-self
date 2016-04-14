class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :address
      t.string :phone_number
      t.integer :category_id
      t.integer :capacity
      t.time :open_hours
      t.time :close_hours

      t.timestamps null: false
    end
  end
end
