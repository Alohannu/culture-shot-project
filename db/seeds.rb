# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating user..."
User.create(first_name: "Sara", last_name: "Sara", email: "Sara@sara.com", password: "123456", date_of_birth: "1993,7,9")
Museum.create(
  name: "MoMa",
  address: "New York, US",
  recommended_age: "10",
  description: "amazing art pieces in downtown New York"
)

Museum.create(
  name: "The Non Existing Club",
  address: "Nowhere",
  recommended_age: "80",
  description: "The illusion of having a party in a club. Sadness and Sorrow."
)
puts "Done!"
