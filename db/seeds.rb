# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all
Restaurant.create(name: "Epicure", category: "french", address: "75008 Paris")
Restaurant.create(name: "Pizza East", category: "italian", address: "Shoreditch, Milan")
Restaurant.create(name: "Thai", category: "japanese", address: "10020 Paris")
Restaurant.create(name: "Cuisine", category: "belgian", address: "Jean Talon, Montreal")
Restaurant.create(name: "Sushi", category: "chinese", address: "Churchill, Santo Domingo")
