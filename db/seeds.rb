# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
restaurant1 = Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0603201155", category: "french")
puts "Created Dishoom"
# Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0686634263", category: "italian", reviews: 4, content: "incredible I love this spot!")
restaurant2 = Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0686634263", category: "italian")
puts "Created Pizza East"
restaurant3 = Restaurant.create!(name: "Otacos", address: "18 Imposture St, Manchester A6 1OM", phone_number: "0745896458", category: "belgian")
puts "Created Otacos"
restaurant4 = Restaurant.create!(name: "Poppeyes", address: "94 Fishing Cat St, London Z3 9LE", phone_number: "0698156977", category: "japanese")
puts "Created Poppeyes"
restaurant5 = Restaurant.create!(name: "St. John", address: "26 St. John St, London EC1M 4AY", phone_number: "0784263485", category: "chinese")
puts "Created St. John"



Review.create!(rating: 4, content: "incredible I love this spot!", restaurant_id: restaurant1.id)

puts "Finished! Created #{Restaurant.count} restaurants."
