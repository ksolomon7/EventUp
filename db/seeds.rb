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
Interest.delete_all

User.reset_pk_sequence
Event.reset_pk_sequence
Group.reset_pk_sequence
Interest.reset_pk_sequence


##############################Users###############################
daisy = User.create!(first_name:"Kalkidan", last_name:"Taye", username:"daisy123", age: 40, profile_description: "I'm just here", password: "abcde123")
patrick= User.create!(first_name: "Patrick", last_name:"Pierre", username:"patrick01", age: 25, profile_description: "We're all to tired", password:"abcde123")
jonathan = User.create!(first_name:"Jonathan", last_name:"Gilber", username:"gilbear73", age: 30, profile_description: "Just a young boy looking to have fun", password: "abcde123")
justin=User.create!(first_name:"Justin", last_name:"Bieber", username:"thebiebs", age: 21, profile_description: "I am looking to explore the little interests in life, through music", password: "abcde123")

##############################Groups###############################
group1= Group.new(name: "Flatiron School")
group2=Group.new(name: "Matcha Tea Store")
group3= Group.new(name: "Julliard School of Arts")
group4= Group.new(name:"Howard University")
group5= Group.new(name:"Starbucks")

##############################Events###############################
event1 = Event.create!(name:"Black Women Who Code", date_and_time: DateTime.new(2020,12,29,21,30), price:rand(1..100),venue: "Howard University Hall", group: group4)
event2 = Event.create!(name:"Black Engineers", date_and_time: DateTime.new(2020,12,29,21,30), price:rand(1..100),venue: "Downtown Location", group: group1)
event3 = Event.create!(name:"Greentea Lovers", date_and_time: DateTime.new(2020,9,28,7,30), price:rand(1..100), venue: "42nd Street-Matcha Store", group:group2)
event4= Event.create!(name:"Code Along with Sylwia", date_and_time:DateTime.new(2020,11,20,15,30), price:rand(1..100), venue: "Flatiron Campus", group:group1)
event5=Event.create!(name:"Salsa Con Fuego", date_and_time:DateTime.new(2020,11,20,15,30), price:rand(1..100), venue: "63rd Street", group:group3)
event6 = Event.create!(name:"Sip and spill", date_and_time: DateTime.new(2020,9,28,7,30), price:rand(1..100), venue: "Bryant Park-Starbucks", group:group5)

##############################Interests###############################

interest1= Interest.create!(name: "GreenTea Lovers", description: "A group for the tea lover in you!")
interest2= Interest.create!(name: "Women Coders", description: "Motivated, young web engineers. Do you want to change the world, one website at a time!")
interest3= Interest.create!(name: "Dancers", description: "Dance, feel, and party the night away!")


puts "I have seeded the database"