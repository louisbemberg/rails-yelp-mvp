# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '1 - Erasing all current restaurants'
Restaurant.destroy_all

puts '2 - creating new set of Restaurants'
first_resto = { name: "Lou's Burger Shack", address: "Lavaux 28, 1009 Pully, Suisse", category: "italian"}
second_resto = { name: "Caro's Delicious Burritos", address: "BikeLane 66, 1506 Amsterdam, Netherlands", category: "belgian"}
third_resto = { name: "Nik's Beer Club", address: "BeerStrasse, 2424 Berlin, Germany", category: "japanese"}
fourth_resto = { name: "Hassan Burger Spot", address: "Marbella, Spain", category: "chinese"}
fifth_resto = { name: "Come's Surfer Corner", address: "Beach, Barcelona, Spain", category: "french"}

resto_array = [first_resto, second_resto, third_resto, fourth_resto, fifth_resto]

counter = 2

resto_array.each do |resto|
  restaurant = Restaurant.create!(resto)
  puts "#{counter += 1} - Created #{restaurant.name}"
end

puts "#{counter += 1} - Seeding Finished! :)"
