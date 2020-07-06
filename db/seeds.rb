# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
krung_siam = { name: "Krung Siam Kichijoji", address: "180-0004 Tokyo, Musashino, Kichijoji Honcho, 1 Chome-8-24", rating: 5 }
bubbys =  { name: "Bubby's", address: "180-0004 Tokyo, Musashino, Kichijoji Honcho, 1 Chome−11−5, Building A, 1F コピス吉祥寺", rating: 4 }
rigoletto = { name: "Cafe Rigoletto", address: "180-0004 Tokyo, Musashino, Kichijoji Honcho, 2 Chome−14−25 1・2F 吉祥寺第２マーブルビル
", rating: 4}

[ krung_siam, bubbys, rigoletto ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
