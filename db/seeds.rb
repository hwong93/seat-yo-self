# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all

Restaurant.destroy_all

# 7
Category.create!(
  :name => 'Italian'
)
# 8
Category.create!(
  :name => 'Mexican'
)
Category.create!(
  :name => 'Asian Fusion'
)
Category.create!(
  :name => 'Brunch'
)
Category.create!(
  :name => 'Contemporary Canadian'
)

Restaurant.create!(
  :name => 'Grand Electric',
  :description => 'Eclectic Mexican',
  :price => 2,
  :address => '1330 Queen St W',
  :phone_number => '(416)627-3459',
  :category_id => 2,
  :capacity => 55,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
Restaurant.create!(
  :name => 'Bent',
  :description => 'Eclectic Asian Fusion',
  :price => 3,
  :address => '777 Dundas St W',
  :phone_number => '(647)352-0092',
  :category_id => 4,
  :capacity => 100,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
Restaurant.create!(
  :name => 'Frings',
  :description => 'Modern Fusion Cuisine',
  :price => 4,
  :address => '455 King St W',
  :phone_number => '(416)979-9696',
  :category_id => 5,
  :capacity => 75,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
Restaurant.create!(
  :name => 'Saving Grace',
  :description => 'Farm-to-Table Fresh Brunch',
  :price => 2,
  :address => '(416)703-7368',
  :category_id => 4,
  :capacity => 40,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
Restaurant.create!(
  :name => 'Libretto Pizzeria',
  :description => 'Modern Italian',
  :price => 3,
  :address => '221 Ossington Ave',
  :phone_number => '(416)532-8000',
  :category_id => 1,
  :capacity => 100,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
Restaurant.create!(
  :name => 'Barrio Coreano',
  :description => 'Korean-Mexican Fusion',
  :price => 3,
  :address => '642 Bloor St W',
  :phone_number => '(416)901-5188',
  :category_id => 3,
  :capacity => 60,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
Restaurant.create!(
  :name => 'Gusto 101',
  :description => 'Eclectic Italian',
  :price => 4,
  :address => '101 Portland St',
  :phone_number => '(416)504-9669',
  :category_id => 1,
  :capacity => 50,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
Restaurant.create!(
  :name => 'Momofoku DAISHO',
  :description => 'Modern Eclectic Cuisine',
  :price => 4,
  :address => '190 University Ave',
  :phone_number => '(647)253-8000',
  :category_id => 5,
  :capacity => 100,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
Restaurant.create!(
  :name => 'Old School',
  :description => 'Everyday Modern Brunch',
  :price => 2,
  :address => '800 Dundas St W',
  :phone_number => '(416)815-8790',
  :category_id => 4,
  :capacity => 70,
  :open_hours => '11:00',
  :close_hours => '20:00'
)
