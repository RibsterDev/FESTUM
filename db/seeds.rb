# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "cleaning database"
<<<<<<< HEAD

Event.destroy_all
100.times do
 event = Event.new(
   name: Faker::Company.name,
   date: Faker::Date.forward(300),
   location: Faker::Address.city,
   periodicity: ['mois', 'année', 'jour'].sample,
   category: ['concert', 'theatre', 'dancing'].sample,
   sub_category: ['humour', 'drame', 'chanson', 'art de rue', 'aniamtion'].sample
   )
   event.save!
 end

 puts "finished"
=======
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

>>>>>>> 684792b7f9dc0a4b3dfe774becda6d351018e860
