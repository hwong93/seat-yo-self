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
  :address => '1330 Queen St W, Toronto, ON',
  :phone_number => '(416)627-3459',
  :category => Category.find_by(name: "Mexican"),
  :capacity => 55,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'grand-electric.jpg',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6417074,-79.432585&zoom=13&size=400x400&
markers=color:blue%7C43.6417074,-79.432585&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
  )


Restaurant.create!(
  :name => 'Bent',
  :description => 'Eclectic Asian Fusion',
  :price => 3,
  :address => '777 Dundas St W, Toronto, ON',
  :phone_number => '(647)352-0092',
  :category => Category.find_by(name: "Asian Fusion"),
  :capacity => 100,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'bent.jpg',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6518557,-79.4074146&zoom=13&size=400x400&
markers=color:blue%7C43.6518557,-79.4074146&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
)
Restaurant.create!(
  :name => 'Frings',
  :description => 'Modern Fusion Cuisine',
  :price => 4,
  :address => '455 King St W, Toronto, ON',
  :phone_number => '(416)979-9696',
  :category => Category.find_by(name: "Contemporary Canadian"),
  :capacity => 75,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'frings.jpg',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6450282,-79.3981607&zoom=13&size=400x400&
markers=color:blue%7C43.6450282,-79.3981607&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
)
Restaurant.create!(
  :name => 'Saving Grace',
  :description => 'Farm-to-Table Fresh Brunch',
  :price => 2,
  :address => '907 Dundas St W, Toronto, ON',
  :phone_number => '(416)703-7368',
  :category => Category.find_by(name: "Brunch"),
  :capacity => 40,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'saving-grace.jpg',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6508548,-79.4145843&zoom=13&size=400x400&
markers=color:blue%7C43.6508548,-79.4145843&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
)
Restaurant.create!(
  :name => 'Libretto Pizzeria',
  :description => 'Modern Italian',
  :price => 3,
  :address => '221 Ossington Ave, Toronto, ON',
  :phone_number => '(416)532-8000',
  :category => Category.find_by(name: "Italian"),
  :capacity => 100,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'libretto.jpg',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6508534,-79.4299537&zoom=13&size=400x400&
markers=color:blue%7C43.6508534,-79.4299537&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
)
Restaurant.create!(
  :name => 'Barrio Coreano',
  :description => 'Korean-Mexican Fusion',
  :price => 3,
  :address => '642 Bloor St W, Toronto, ON',
  :phone_number => '(416)901-5188',
  :category => Category.find_by(name: "Asian Fusion"),
  :capacity => 60,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'barrio-coreano.jpg',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6644853,-79.417391&zoom=13&size=400x400&
markers=color:blue%7C43.6644853,-79.417391&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
)
Restaurant.create!(
  :name => 'Gusto 101',
  :description => 'Eclectic Italian',
  :price => 4,
  :address => '101 Portland St, Toronto, ON',
  :phone_number => '(416)504-9669',
  :category => Category.find_by(name: "Italian"),
  :capacity => 50,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'gusto-101.jpg',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6452189,-79.402219&zoom=13&size=400x400&
markers=color:blue%7C43.6452189,-79.402219&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
)
Restaurant.create!(
  :name => 'Momofuku DAISHO',
  :description => 'Modern Eclectic Cuisine',
  :price => 4,
  :address => '190 University Ave, Toronto, ON',
  :phone_number => '(647)253-8000',
  :category => Category.find_by(name: "Contemporary Canadian"),
  :capacity => 100,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'momofuku-daisho.JPG',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6494704,-79.388528&zoom=13&size=400x400&
markers=color:blue%7C43.6494704,-79.388528&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
)
Restaurant.create!(
  :name => 'Old School',
  :description => 'Everyday Modern Brunch',
  :price => 2,
  :address => '800 Dundas St W, Toronto, ON',
  :phone_number => '(416)815-8790',
  :category => Category.find_by(name: "Brunch"),
  :capacity => 70,
  :open_hours => '11:00',
  :close_hours => '20:00',
  :image => 'old-school.jpg',
  :map => 'https://maps.googleapis.com/maps/api/staticmap?center=43.6519557,-79.4106535&zoom=13&size=400x400&
markers=color:blue%7C43.6519557,-79.4106535&key=AIzaSyBYAsN6ToQH2FI_5GmMOpqg3ZXfx95-skE'
)
