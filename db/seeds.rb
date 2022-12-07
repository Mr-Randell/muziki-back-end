# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)



user1= User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
user2 = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
user3 =User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)



Playlist.create(name: "Top 20 Hottest Hits", description: "The Top Trending songs of 2022", user_id: user1.id)
Playlist.create(name: "My Morning Vibe", description: "Smooth waking up songs", user_id: user1.id)
Playlist.create(name: "Friday Night Vibes", description: "The Club Bangers Songs", user_id: user2.id)

