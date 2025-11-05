# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning..."
Restaurant.destroy_all
puts "cleared"

puts "creating..."
r1 = Restaurant.create!(
  name: "Mcdo",
  phone_number: "0123456789",
  address: "1 rue du test, 67500 Haguenau ",
  category: "french"
)
r1.reviews.create!(rating: 5, content: "Excellent !")

r2 = Restaurant.create!(
  name: "five guys",
  phone_number: "0212765432",
  address: "5 rue de la rue, 65980 Departement",
  category: "belgian"
)
r2.reviews.create!(rating: 1, content: "surcôté !")

r3 = Restaurant.create!(
  name: "Villa de jade",
  phone_number: "+33 3 28 36 19 65",
  address: "53 Avenue du cyclope, 67470 Sorcelleville",
  category: "japanese"
)
r3.reviews.create!(rating: 5, content: "Meilleur restaurant !")

r4 = Restaurant.create!(
  name: "Garçon pointu",
  phone_number: "03883444333",
  address: "5 allée feulin, 67470 Sorcelleville",
  category: "italian"
)
r4.reviews.create!(rating: 3, content: "Chelou l'adresse !")

r5 = Restaurant.create!(
  name: "croc mou",
  phone_number: "+33 3 45 98 56 32",
  address: "7 boulevard du boulevard, 45760 Ouais",
  category: "chinese"
)
r5.reviews.create!(rating: 2, content: "Aucun effort !")

puts "#{Restaurant.count} restaurants created"
