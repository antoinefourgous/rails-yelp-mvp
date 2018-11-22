# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary ',
    phone_number:  '0636878909',
    category: "belgian"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch ',
    phone_number:  '0632652656878909',
    category:       'chinese'
  },
  {
    name:         'Pizza west',
    address:      'rue de la tour',
    phone_number:  '675675675679',
    category: 'japanese'
  },
  {
    name:         'yo momma',
    address:      'avenue kleber',
    phone_number:  '+22306326',
    category: 'french'
  },
  {
    name:         'hihihaha',
    address:      'rue de la paix',
    phone_number:  '+334578789787',
    category: 'italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
