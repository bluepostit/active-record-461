# This is where you can create initial data for your app.
require 'faker'

puts 'Creating restaurants...'
Restaurant.create!(name: "Bob's Burgers", address: 'Istanbul')
Restaurant.create!(name: "Urban", address: 'Istanbul')

dominos = Restaurant.new(name: "Domino's", address: 'Ankara')
dominos.save!


puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    rating:  rand(0..5)
  )
  restaurant.save!
end

puts '... Done!'
