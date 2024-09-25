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
eattokyo = { name: "Eat Tokyo", address: "7 Boundary St, London E2 7JE", category: "japanese", phone_number: "22 33 1213 231" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "22 32 1214 133"}
tiantian = { name: "Tian Tian", address: "234 ChinaTown, London", category: "chinese", phone_number: "445 32 1214 133" }
chocolateshop = { name: "Chocolate Shop", address: "53 Shoreditch High St, London E1 6PQ", category: "belgian", phone_number: "44 42 1214 333" }
steak = { name: "Steak", address: "3 ChinaTown, London", category: "french", phone_number: "44 42 44414 333"  }

[eattokyo, pizza_east, tiantian, chocolateshop, steak].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
