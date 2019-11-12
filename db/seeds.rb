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






10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Name.name
    )
  user.save!
  event = Event.new(
    name: Faker::Company.name,
    date_start: Faker::Date.forward(days:300),
    location: Faker::Address.city,
    periodicity: ['mois', 'année', 'jour'].sample,
    category: ['concert', 'theatre', 'dancing'].sample,
    sub_category: ['humour', 'drame', 'chanson', 'art de rue', 'animation'].sample,
    creator: user
    )
  event.save!
end


puts "finished"

