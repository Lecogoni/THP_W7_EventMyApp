# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Event.destroy_all


location = ["Paris", "Bordeaux", "Marseille", "NY", "Vezoul", "Bagneux"]
duration = [5, 10, 20, 25, 30, 45, 55]

5.times do
Event.create(
  start_date: Faker::Date.between(from: Time.now, to: 1.month.from_now),
  duration: duration.sample,
  title: Faker::Game.title,
  description: Faker::Movies::BackToTheFuture.quote,
  price: Faker::Number.between(from: 1, to: 50),
  location: location.sample
)
end
puts " 4 Event"
