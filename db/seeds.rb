# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Event.delete_all
Group.delete_all
# Interest.delete_all

User.reset_pk_sequence
Event.reset_pk_sequence
Group.reset_pk_sequence
# Interest.reset_pk_sequence
# User
daisy = User.create!(first_name:"Kalkidan", last_name:"Taye", username:"daisy123", age: 40, profile_description: "I'm just here", password: "abc123")
patrick= User.create!(first_name: "Patrick", last_name:"Pierre", username:"patrick123", age: 25, profile_description: "We're all to tired", password:"abc123")

#group
group1= Group.new(name: "Flatiron")

#events
event1 = Event.create!(name:"Black Women Who Code", date_and_time: DateTime.new(2020,8,29,22,35), price:rand(1..100),venue: "Howard University", group: group1)
event2 = Event.create!(name:"Day with Kalkidan", date_and_time: DateTime.new(2020,9,28,7,30), price:rand(1..100), venue: "The Skreets", group:group1)
event3 = Event.create!(name:"Code Along with Sylwia", date_and_time:DateTime.new(2020,11,20,15,30), price:rand(1..100), venue: "Flatiron Campus", group:group1)

puts "I have seeded the database"