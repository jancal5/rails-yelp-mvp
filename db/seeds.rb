# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#clean database
Restaurant.destroy_all

#restaurants info
mc_donalds = {name: "Mc Donalds", address: "71st street", phone_number: "123-456-7172", category: "chinese"}
burger_king = {name: "Burger king", address: "52nd street", phone_number: "832-454-1209", category: "french"}
wendys = {name: "Wendy's", address: "38th street", phone_number: "987-342-1212", category: "belgian"}
arbys = {name: "Arby's", address: "12th street", phone_number: "234-432-1234", category: "italian"}
taco_bell = {name: "Taco Bell", address: "42nd street", phone_number: "908-876-8765", category: "japanese"}


#create restaurants
[mc_donalds, burger_king, wendys, arbys, taco_bell].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end
