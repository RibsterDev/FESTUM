# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "cleaning database"
Event.destroy_all
User.destroy_all

# user_attributes = [{
#     name: "lea",
#     email: "lea@gmail.com",
#     password: "lealea"
#   },
#   {
#     name: "evan,",
#     email: "evan@gmail.com",
#     password: "evanevan"
#   },
#   {
#     name: "jeremy",
#     email: "jeremy@gmail.com",
#     password: "jeremy"
#   }
# ]
# User.create!(user_attributes)


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


10.times do
  event = Event.new(
    name: Faker::Company.name,
    date_start: Faker::Date.forward(days:300),
    location: Faker::Address.city,
    periodicity: ['mois', 'année', 'jour'].sample,
    category: ['concert', 'theatre', 'dancing'].sample,
    sub_category: ['humour', 'drame', 'chanson', 'art de rue', 'animation'].sample,
    creator: users.sample
    )
  event.save!
end


puts "finished"

