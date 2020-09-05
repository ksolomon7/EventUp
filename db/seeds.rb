# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

daisy = User.create!(first_name:"Kalkidan", last_name:"Taye", username:"daisy123", age: 29, profile_description: "I'm just here", password: "abc123")

#events

event1 = Event.create!(name:"Black Women Who Code", date_and_time: DateTime.parse("09/14/2009 8:00"), price:rand(1..100),venue: "Howard University")
event2 = Event.create!(name:"Day with Kalkidan", date_and_time: DateTime.parse("09/20/2020 5:00"), price:rand(1..100), venue: "The Skreets")
event3 = Event.create!(name:"Code Along with Sylwia", date_and_time:DateTime.parse("10/15/2015 3:00"), price:rand(1..100), venue: "Flatiron Campus")
