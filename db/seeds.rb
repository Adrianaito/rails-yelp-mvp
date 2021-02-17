# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroying restaurants...'
Restaurant.destroy_all

puts 'creating restaurants...'
10.times do
  new_rest = Restaurant.new(
    name: Faker::JapaneseMedia::OnePiece.character,
    address: Faker::JapaneseMedia::OnePiece.island,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
    )
  new_rest.save
end

puts "Created #{Restaurant.count} restaurants!"
