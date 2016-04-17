# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 7
Category.create!(
  :name => 'italian'
)
# 8
Category.create!(
  :name => 'mexican'
)

Restaurant.create!(
  :name => 'Grand Electric',
  :description => 'Mexican from the heart!',
  :price => 3,
  :address => '123 sesame',
  :phone_number => '123-456-7890',
  :category_id => 2,
  :capacity => 55,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
