# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning the DB"
#modelname.destroy_all
Restaurant.destroy_all

puts "Create Restaurants"

mcdonalds = { name: "Mcdonals", address: "Lisbon", phone_number: 43434343, category: "chinese" }
galata = { name: "Galata", address: "Istanbul", phone_number: 284450, category: "italian" }
grey = { name: "Grey", address: "Istanbul", phone_number: 559058, category: "french" }
buli = { name: "Buli", address: "Barcelona", phone_number: 292929, category: "belgian" }
kfc = { name: "KFC", address: "Porto", phone_number: 4323243, category: "chinese" }


[mcdonalds,galata,grey,buli,kfc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
  end
puts "Finished seeding"
