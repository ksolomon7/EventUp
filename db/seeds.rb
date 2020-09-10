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
UserEvent.delete_all

User.reset_pk_sequence
Event.reset_pk_sequence
Group.reset_pk_sequence
Interest.reset_pk_sequence
UserEvent.reset_pk_sequence


##############################Users###############################
daisy = User.create(first_name:"Kalkidan", last_name:"Taye", username:"daisy123", age: 40, profile_description: "I'm just here", password: "abcde123")
patrick= User.create(first_name: "Patrick", last_name:"Pierre", username:"patrick01", age: 25, profile_description: "We're all to tired", password:"abcde123")
jonathan = User.create(first_name:"Jonathan", last_name:"Gilber", username:"gilbear73", age: 30, profile_description: "Just a young boy looking to have fun", password: "abcde123")
justin=User.create(first_name:"Justin", last_name:"Bieber", username:"thebiebs", age: 21, profile_description: "I am looking to explore the little interests in life, through music", password: "abcde123")

##############################Groups###############################
group1= Group.new(name: "Flatiron School", description: "Our 2019 Jobs Report shows how motivated people with big career goals can quickly transform their lives by landing jobs in tech.At Flatiron School you learn how the future is being built, so you can change anything, starting with a new career in code, data science, or cybersecurity.")
group2= Group.new(name: "Matcha Tea Store", description: "A place Annie goes to buy tea sometimes.")
group3= Group.new(name: "Julliard School of Arts", description: "The Juilliard School is a private performing arts conservatory in New York City. Established in 1905, the school trains about 850 undergraduate and graduate students in dance, drama, and music. It is widely regarded as one of the world's leading drama, music and dance schools, with some of the most prestigious arts programs.")
group4= Group.new(name:"Howard University", description:"Founded in 1867, Howard University is a private, research university comprised of 13 schools and colleges. Students pursue studies in more than 120 areas leading to undergraduate, graduate and professional degrees. To date, Howard has awarded more than 120,000 degrees in the arts, the sciences, and the humanities. The historic main campus sits on a hilltop in Northwest Washington blocks from the storied U Street and Howard Theatre. We are two miles from the U.S. Capitol where many students intern, and scores of alumni shape national and foreign policy. HU,you know!!!")
group5= Group.new(name:"Starbucks", description: "Starbucks Corporation is an American multinational chain of coffeehouses and roastery reserves headquartered in Seattle, Washington. As the world's largest coffeehouse chain, Starbucks is seen to be the main representation of the United States' second wave of coffee culture.Starbucks locations serve hot and cold drinks, whole-bean coffee, microground instant coffee known as VIA, espresso, caffe latte, full- and loose-leaf teas including Teavana tea products, Evolution Fresh juices, Frappuccino beverages, La Boulange pastries, and snacks including items such as chips and crackers; some offerings (including their annual fall launch of the Pumpkin Spice Latte) are seasonal or specific to the locality of the store.")
group6= Group.new(name: "Investinkin - Alternative Investments Club", description: "InvestinKin is a tight-knit alternative investments club started in Westchester County, NY for people serious about investing and getting investments. Our focus is to provide investors with deals that are vetted across all industries. Investors can elect to invest individually or as a group on opportunities being presented. We place emphasis on the quality of the deals versus quantity." )
##############################Events###############################
# Flatiron Events
event1= Event.create(name:"Coding Along with Sylwia", date_and_time:DateTime.new(2020,11,20,15,30), price:rand(1..100), venue: "Flatiron Campus", group:group1)
event2= Event.create(name:"Software Engineering", date_and_time:DateTime.new(2020,12,20,15,30), price:rand(1..100), venue: "Flatiron Campus", group:group1)
event3 = Event.create(name:"Black Engineers", date_and_time: DateTime.new(2020,12,29,21,30), price:rand(1..100),venue: "Downtown Location", group: group1)
event4= Event.create(name: "Women Coders", date_and_time: DateTime.new(2021,02,28,16,30), price:rand(1..100),venue: "Flatiron Brooklyn Campus", group:group1)
event5= Event.create(name: "Flatiron Toastmasters Meeting", date_and_time: DateTime.new(2021,01,28,17,30), price:rand(1..100),venue: "Flatiron Brooklyn Campus", group:group1)
#Howard University
event6 = Event.create(name:"Black Women Coders", date_and_time: DateTime.new(2020,12,29,21,30), price:rand(1..100),venue: "Howard University Hall", group: group4)
event7 = Event.create(name:"Afro Dance", date_and_time: DateTime.new(2021,01,28,7,30), price:rand(1..100), venue: "Howard University- George Mathison Hall", group:group4)

# Julliard
event8=Event.create(name:"Salsa Con Fuego", date_and_time:DateTime.new(2020,11,20,15,30), price:rand(1..100), venue: "63rd Street", group:group3)
event9=Event.create(name:"Dance Freedom", date_and_time: DateTime.new(2021,03,31,12,30), price:rand(1..100), venue: "Online-Zoom", group:group3)
# Starbucks
event10 = Event.create(name:"Sip and spill", date_and_time: DateTime.new(2020,9,28,7,30), price:rand(1..100), venue: "Bryant Park-Starbucks", group:group5)
event11= Event.create(name:"Words of Wisdom", date_and_time: DateTime.new(2020,9,11,4,30), price:rand(1..100), venue: "Times Square-Starbucks", group:group5)
event12= Event.create(name: "Buzzword Word Party Fundraiser", date_and_time: DateTime.new(2021,3,30,5,30), price:rand(1..100), venue: "Union Square-Starbucks", group:group5)
#Matcha Store
event13 = Event.create(name:"Greentea Lovers", date_and_time: DateTime.new(2020,9,28,7,30), price:rand(1..100), venue: "42nd Street-Matcha Store", group:group2)
event14= Event.create(name: "Cash and Coffee", date_and_time: DateTime.new(2021,04,20,17,30), price: rand(1..100), venue: "34th Street Location", group:group2)
event15= Event.create(name: "Lean Coffee Gathering", date_and_time: DateTime.new(2021,04,27,12,30), price: rand(1..100), venue: "42nd Street-Matcha Store", group:group2)

#investkin
event16= Event.create(name: "Present Deals for Investments", date_and_time: DateTime.new(2020,11,28,7,30), price:rand(1..100), venue: "42nd Street-Public Library", group:group6)
event17= Event.create(name: "Investor Happy Hour", date_and_time: DateTime.new(2021,05,12,9,30), price:rand(1..100), venue: "42nd Street-Public Library", group:group6)
###############################User Events###########################
userevent1= UserEvent.create(user: daisy, event: event1)
userevent2=UserEvent.create(user: daisy, event: event2)
userevent3=UserEvent.create(user: daisy, event: event5)
userevent4= UserEvent.create(user: patrick, event: event15)
userevent5=UserEvent.create(user: patrick, event: event16)
userevent6=UserEvent.create(user: patrick, event: event14)
##############################Interests###############################
#interest for Flatiron
interest1= Interest.create(name: "Women Coders", description: "Motivated, young web engineers. Do you want to change the world, one website at a time!")
interest2= Interest.create(name: "Software Engineering", description: "Web development, dev ops, software engineering!")
interest3= Interest.create(name: "Black Engineer", description: "To increase the number of culturally responsible Black engineers who excel academically, succeed professionally, and positively impact the community.")
interest4= Interest.create(name: "Flatiron Toastmasters Meeting",description:"Join us for our regular meeting to sharpen your public speaking skills- please get in contact with our club for further information and for the Zoom link.")
#interest for Matcha Store
interest5= Interest.create(name: "GreenTea Lovers", description: "A group for the tea lover in you!")
interest6= Interest.create(name: "Cash and Coffee", description: "Where the magic happens! We meet every Saturday Morning. Meeting structure varies sightly from week to week but for the most part they consist of the following. Introductions, Topic choice (3 topics),topic discussion,Takeaways and weekly action items.")
interest7= Interest.create(name: "Lean Coffee Gathering", description: "Lean Coffee is a structured, but agenda-less meeting. Participants gather, build an agenda, and begin talking. Conversations are directed and productive because the agenda for the meeting was democratically generated. There are currently dozens of Lean Coffees happening world-wide, including Seattle, San Francisco, Stockholm, Toronto, Boulder, New York City, and PHILADELPHIA.")
#interest for Starbucks
interest8= Interest.create(name:"Sip and spill", description:"A place where you can sit and talk about all your concerns, your spoken words, and your interesting thoughts. ")
interest9= Interest.create(name: "Words of Wisdom", description: "Pour your morning tea or coffee and prepare to start your day off with a fresh, new point of view. This weekly book reading series aims to lighten your mind through words of wisdom from the sages.")
interest10= Interest.create(name: "Buzzword Word Party Fundraiser", description: "The in person trivia events are some of our most popular and well attended meetups. Now we have developed a system where you can enjoy this event from the comfort and safety of our starbucks.")

#interest for Julliard
interest11= Interest.create(name: "Salsa Con Fuego", description: "Dance, feel, and party the night away!")
interest12= Interest.create(name: "Dance Freedom", description: "Dance, when you're broken open. Dance, if you've torn the bandage off. Dance in the middle of the fighting. Dance in your blood. Dance when you're perfectly free. You're invited to dance online with us from wherever you are, until we can dance again in person.")

#interest for Investkin
interest13= Interest.create(name: "Present Deals for Investments", description: "We are focused on providing a space where companies, projects and real estate deals that need funding find investors who have money and are looking for deals to invest in.")
interest14=Interest.create(name: "Investor Happy Hour", description: "Learn about the investors, founders, and partners that are building up North Carolina. Hear from Phil Ostwalt of the High Country Impact Fund and Jessie Dean of Asheville Tea Company about their experiences with investment crowdfunding.")

#interest for Howard University
interest15= Interest.create(name: "Black Women Coders", description: "Our next virtual Black women who code will feature iOS Development lead by Mikaela Caron. Whether you are currently an iOS Developer or want to learn, come practice your skills with us.")
interest16= Interest.create(name: "Afro Dance", description: "Join us for this free African dance class with master teacher, Aly Cardinalli. Weekly, he takes you to different parts of Africa to celebrate dance from around the continent and includes African American dance as well. It's aerobic and a lot of fun. Let's dance and tell our story.")
##########################Group Interests################################
groupinterest1= GroupInterest.create(group_id:group1.id, interest_id:interest1.id)
groupinterest2= GroupInterest.create(group_id:group1.id, interest_id:interest2.id)
groupinterest3= GroupInterest.create(group_id:group1.id, interest_id:interest3.id)
groupinterest4= GroupInterest.create(group_id:group1.id, interest_id:interest4.id)
groupinterest5= GroupInterest.create(group_id:group2.id, interest_id:interest5.id)
groupinterest6= GroupInterest.create(group_id:group2.id, interest_id:interest6.id)
groupinterest7= GroupInterest.create(group_id:group2.id, interest_id:interest7.id)
groupinterest8= GroupInterest.create(group_id:group5.id, interest_id:interest8.id)
groupinterest9= GroupInterest.create(group_id:group5.id, interest_id:interest9.id)
groupinterest10= GroupInterest.create(group_id:group5.id, interest_id:interest10.id)
groupinterest11= GroupInterest.create(group_id:group3.id, interest_id:interest11.id)
groupinterest12= GroupInterest.create(group_id:group3.id, interest_id:interest12.id)
groupinterest13= GroupInterest.create(group_id:group6.id, interest_id:interest13.id)
groupinterest14= GroupInterest.create(group_id:group6.id, interest_id:interest14.id)
groupinterest15= GroupInterest.create(group_id:group4.id, interest_id:interest15.id)
groupinterest16= GroupInterest.create(group_id:group4.id, interest_id:interest16.id)
puts "I have seeded the database"