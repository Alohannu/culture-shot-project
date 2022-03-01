# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the database...."
User.destroy_all
Museum.destroy_all
Rating.destroy_all

puts "Creating user..."
user = User.new(first_name: "Sara", last_name: "Sara", email: "Sara@sara.com", password: "123456", date_of_birth: "1993,7,9")
user.save

museum = Museum.new(
  name: "Neues Museum",
  address: "Bodestraße 1-3, 10178 Berlin, Germany",
  recommended_age: "20",
  description: "your journey to ancient civilizations"
)
museum.save

Museum.create!(
  name: "Deutsches Technikmuseum",
  address: "Trebbiner Str. 9, 10963 Berlin, Germany",
  recommended_age: "15",
  description: "a hands-on, activity-oriented fun tour of the cultural history of technology located at the Anhalter freight station"
)

Rating.create!(
  user: user,
  museum: museum,
  title: "great experience",
  comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
  stars: 3
)
Rating.create!(
  user: user,
  museum: museum,
  title: "disappointed",
  comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
  stars: 4
)

Rating.create!(
  user: user,
  museum: museum,
  title: "strongly recommend",
  comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
  stars: 5
)

Rating.create!(
  user: user,
  museum: museum,
  title: "satisfactory, that's all",
  comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
  stars: 2
)

Rating.create!(
  user: user,
  museum: museum,
  title: "an unforgettable journey",
  comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
  stars: 1
)

Rating.create!(
  user: user,
  museum: museum,
  title: "good if you want to know more history about technology",
  comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
  stars: 2
)

puts "Done!"
