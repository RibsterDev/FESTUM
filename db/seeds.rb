# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "cleaning database"

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
