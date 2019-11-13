# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Event.destroy_all
User.destroy_all


user1 = User.new(
  name: "lea",
  email: "lea@gmail.com",
  password: "lealea"
  )
user1.save!
user2 = User.new(
  name: "evan",
  email: "evan@gmail.com",
  password: "evanevan"
  )
user2.save!
user3 = User.new(
  name: "jeremy",
  email: "jeremy@gmail.com",
  password: "jeremy"
  )
user3.save!
users = [user1, user2, user3]


# 10.times do
#   event = Event.new(
#     name: Faker::Company.name,
#     date_start: Faker::Date.forward(days:300),
#     location: Faker::Address.city,
#     periodicity: ['mois', 'année', 'jour'].sample,
#     category: ['concert', 'theatre', 'dancing'].sample,
#     sub_category: ['humour', 'drame', 'chanson', 'art de rue', 'animation'].sample,
#     creator: users.sample
#     )
#   event.save!
# end

events_attributes = [
  {
    name: 'Roméo et Juliette',
    date_start: Date.new(2019,12,23),
    date_end: Date.new(2020,01,04),
    location: 'Lyon',
    periodicity: "annuel",
    category: 'Theatre',
    sub_category: 'tragédie',
    creator: users.sample
  },

  {
    name: 'La Vie de Galilée',
    date_start: Date.new(2019,12,23),
    date_end: Date.new(2019,12,23),
    location: 'Lyon',
    periodicity: "unique",
    category: 'Theatre',
    sub_category: 'aventure',
    creator: users.sample
  },

  {
    name: "Never Complain, never explain",
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2019,11,17),
    location: 'Lyon',
    periodicity: "annuel",
    category: 'Festival',
    sub_category: 'art',
    creator: users.sample
  },

  {
    name: "Artjacking",
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2019,11,15),
    location: 'Lyon',
    periodicity: "mensuel",
    category: 'Musique',
    sub_category: 'rap',
    creator: users.sample
  },

  {
    name: "Foodoo",
    date_start: Date.new(2019,12,10),
    date_end: Date.new(2019,12,12),
    location: 'Lyon',
    periodicity: "annuel",
    category: 'Festival',
    sub_category: 'cuisine',
    creator: users.sample
  },

  {
    name: "Biennale d'art contemporain",
    date_start: Date.new(2019,11,18),
    date_end: Date.new(2019,01,05),
    location: 'Lyon',
    periodicity: "biennale",
    category: 'Exposition',
    sub_category: 'art contemporain',
    creator: users.sample
  },

  {
    name: "FUNFUNFUNK",
    date_start: Date.new(2019,12,27),
    date_end: Date.new(2019,12,27),
    location: 'Lyon',
    periodicity: "unique",
    category: 'Musique',
    sub_category: 'funk',
    creator: users.sample
  },

  {
    name: 'Scent of ink',
    date_start: Date.new(2019,11,20),
    date_end: Date.new(2020,01,20),
    location: 'Paris',
    periodicity: "annuel",
    category: 'danse',
    sub_category: 'contemporain',
    creator: users.sample
  },

  {
    name: "J'ai envie de toi",
    date_start: Date.new(2019,11,29),
    date_end: Date.new(2020,04,16),
    location: 'Paris',
    periodicity: "annuel",
    category: 'theatre',
    sub_category: 'comedie',
    creator: users.sample
  },

  {
    name: "Touré Kunda",
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2019,11,15),
    location: 'Paris',
    periodicity: "unique",
    category: 'Musique',
    sub_category: 'sénégal',
    creator: users.sample
  },

  {
    name: "Johnny, fabuleux le comeback",
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2019,11,15),
    location: 'Paris',
    periodicity: "exceptionnel",
    category: 'Concert',
    sub_category: 'beauf',
    creator: users.sample
  },


  {
    name: "The best",
    date_start: Date.new(2019,11,20),
    date_end: Date.new(2020,06,01),
    location: 'Paris',
    periodicity: "unique",
    category: 'Spectacle',
    sub_category: 'comique',
    creator: users.sample
  },

  {
    name: "Sleep no more",
    date_start: Date.new(2019,12,20),
    date_end: Date.new(2020,01,05),
    location: 'Paris',
    periodicity: "unique",
    category: 'theatre',
    sub_category: 'vivant',
    creator: users.sample
  },

  {
    name: "Chrisian Boltanski",
    date_start: Date.new(2019,11,13),
    date_end: Date.new(2020,03,16),
    location: 'Paris',
    periodicity: "unique",
    category: 'Exposition',
    sub_category: 'art contemporain',
    creator: users.sample
  },

  {
    name: "Futur, ancien, fugitif",
    date_start: Date.new(2019,10,16),
    date_end: Date.new(2020,01,05),
    location: 'Paris',
    periodicity: "unique",
    category: 'Exposition',
    sub_category: 'art numerique',
    creator: users.sample
  },

  {
    name: "Philippe katerine, the show",
    date_start: Date.new(2019,11,16),
    date_end: Date.new(2020,01,16),
    location: 'Lyon',
    periodicity: "unique",
    category: 'Exposition',
    sub_category: 'art numerique',
    creator: users.sample
  }
]

Event.create!(events_attributes)

puts "finished"




