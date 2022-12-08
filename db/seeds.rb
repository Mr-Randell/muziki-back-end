# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding data..."

Artist.create(
    name: "Diamond Platnumz",
    country_of_origin: "Tanzania",
    age: 38
)

Artist.create(
    name: "Ali Kiba",
    country_of_origin: "Tanzania",
    age: 34
)

Artist.create(
    name: "Lady Jaydee",
    country_of_origin: "Tanzania",
    age: 37
)

Artist.create(
    name: "Bill Nass",
    country_of_origin: "Tanzania",
    age: 34
)

Artist.create(
    name: "Rose Mhando",
    country_of_origin: "Tanzania",
    age: 42
)

Artist.create(
    name: "Daniel Owino Misiani",
    country_of_origin: "Tanzania, Kenya",
    age: 48
)

Artist.create(
    name: "Tumi Molekane",
    country_of_origin: "Tanzania, South African",
    age: 29
)

Artist.create(
    name: "Michael Jackson",
    country_of_origin: "United State of America",
    age: 58
)

Artist.create(
    name: "Eminem",
    country_of_origin: "United State of America",
    age: 33
)

Artist.create(
    name: "Taylor Swift",
    country_of_origin: "United State of America",
    age: 45
)

Artist.create(
    name: "Prince",
    country_of_origin: "United State of America",
    age: 32
)

Artist.create(
    name: "Shown Mendes",
    country_of_origin: "United State of America",
    age: 36
)

Artist.create(
    name: "Billie Eilish",
    country_of_origin: "United State of America",
    age: 20
)

Artist.create(
    name: "Akothee",
    country_of_origin: "Kenya",
    age: 40
)

Artist.create(
    name: "King Kaka",
    country_of_origin: "Kenya",
    age: 39
)

Artist.create(
    name: "Mejja",
    country_of_origin: "Kenya",
    age: 42
)

Artist.create(
    name: "Sanaipei Tande",
    country_of_origin: "Kenya",
    age: 30
)

Artist.create(
    name: "Otile Brown",
    country_of_origin: "Kenya",
    age: 29
)

Artist.create(
    name: "Daddy Owen",
    country_of_origin: "Kenya",
    age: 40
)


Song.create(
    name: "Donjo",
    genre: "Hip Hop",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Neema Yake",
    genre: "Hip Hop",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Narejea Kwako",
    genre: "Hip Hop",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "The Way you Are",
    genre: "Hip Hop",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "This Kind of Love",
    genre: "Hip Hop",
    year_of_release: 2019
)

Song.create(
    name: "Odi Dance",
    genre: "Dance",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Zigwembe",
    genre: "Dance",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Azonto",
    genre: "Dance",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Bend Over",
    genre: "Dance",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Selfie",
    genre: "Dance",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "The Fox",
    genre: "Electronic",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Forever Is Over",
    genre: "Electronic",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Faded",
    genre: "Electronic",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Family",
    genre: "Electronic",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Flying on My Own",
    genre: "Electronic",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Bones",
    genre: "Alternative",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Forget Me",
    genre: "Alternative",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "SNAP",
    genre: "Alternative",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Pointless",
    genre: "Alternative",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "After Dark",
    genre: "Alternative",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Soul Man",
    genre: "Soul",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "You Make Me Feel Like A Natural Woman",
    genre: "Soul",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "Let’s Stay Together",
    genre: "Soul",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "I Want You",
    genre: "Soul",
    year_of_release: rand(1995..2022)
)

Song.create(
    name: "I Heard it Through the Grapevine",
    genre: "Soul",
    year_of_release: rand(1995..2022)
)


Song.create(
    name: "Magnificent Hurt",
    genre: "Rock",
    year_of_release: rand(1995..2022)
)


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

puts "🌱 Done seeding!"