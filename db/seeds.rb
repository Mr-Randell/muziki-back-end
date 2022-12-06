# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Artist.create(
    name: Faker::Name.name,
    country_of_origin: Faker::Address.country,
    age: rand(1..99)
)

Artist.create(
    name: Faker::Name.name,
    country_of_origin: Faker::Address.country,
    age: rand(1..99)
)

Artist.create(
    name: Faker::Name.name,
    country_of_origin: Faker::Address.country,
    age: rand(1..99)
)

Artist.create(
    name: Faker::Name.name,
    country_of_origin: Faker::Address.country,
    age: rand(1..99)
)

Artist.create(
    name: Faker::Name.name,
    country_of_origin: Faker::Address.country,
    age: rand(1..99)
)

Artist.create(
    name: Faker::Name.name,
    country_of_origin: Faker::Address.country,
    age: rand(1..99)
)
