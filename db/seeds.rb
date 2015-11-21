# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

<<<<<<< HEAD
<<<<<<< HEAD
#t1= User.create(email: "mrshi1994@gmail.com", encrypted_password: "$2a$10$iz/HOog0t0EB4Fbt.f6qNe4l0JC4kzS5v.Nn2fJDUMCCM0/sgFMwO")
#Notification.create(userid: 1, message: "have a try", user_id: t1.id)


=======
>>>>>>> 8bbf7c62d379f4185440b07d003df6a3a24e768c
Adventure.create(location: "a", num_people: 2, num_day: 3, plan: "Hiking", user_id: 1);
Adventure.create(location: "a", num_people: 2, num_day: 3, plan: "Hiking", user_id: 2);
Adventure.create(location: "a", num_people: 3, num_day: 3, plan: "Hiking", user_id: 3);
Adventure.create(location: "a", num_people: 4, num_day: 3, plan: "Hiking", user_id: 2);
Adventure.create(location: "b", num_people: 5, num_day: 3, plan: "Hiking", user_id: 1);
Adventure.create(location: "b", num_people: 34, num_day: 3, plan: "Hiking", user_id: 2);
Adventure.create(location: "c", num_people: 1, num_day: 3, plan: "Hiking", user_id: 4);
Adventure.create(location: "c", num_people: 10, num_day: 3, plan: "Hiking", user_id: 3);
Adventure.create(location: "a", num_people: 2, num_day: 3, plan: "Hiking", user_id: 4);
Adventure.create(location: "a", num_people: 4, num_day: 3, plan: "Hiking", user_id: 2);
Adventure.create(location: "b", num_people: 6, num_day: 3, plan: "Hiking", user_id: 4);
Adventure.create(location: "c", num_people: 7, num_day: 3, plan: "Hiking", user_id: 3);
Adventure.create(location: "a", num_people: 8, num_day: 3, plan: "Hiking", user_id: 1);
Adventure.create(location: "b", num_people: 70, num_day: 3, plan: "Hiking", user_id: 2);
Adventure.create(location: "c", num_people: 23, num_day: 3, plan: "Hiking", user_id: 1);
<<<<<<< HEAD
Adventure.create(location: "a", num_people: 12, num_day: 3, plan: "Hiking", user_id: 1);
=======
Adventure.create(location: "a", num_people: 12, num_day: 3, plan: "Hiking", user_id: 1);
>>>>>>> 8bbf7c62d379f4185440b07d003df6a3a24e768c
=======
puts "start seeding"

number_of_advenetures = 100
number_of_users = 100

def
create_adventure(location_creater)
  Adventure.create(
      location: location_creater,
      num_people: rand(1..99),
      num_day: rand(1..99),
      plan: "Hiking " + rand(1..5).to_s + " places",
      user_id: rand(1..99)
  )
end

# create adventures
puts "Create adventures with location a"
number_of_advenetures.times do
  create_adventure("a")
end

puts "Create adventures with location b"
number_of_advenetures.times do
  create_adventure("b")
end

puts "Create adventures with location c"
number_of_advenetures.times do
  create_adventure("c")
end

# create users
puts "Create users"
number_of_users.times do |n_user|
  User.create(
      email: n_user.to_s + "@ucla.edu",
      password: "11111111",
      password_confirmation: "11111111",
  )
end

puts "end seeding"
>>>>>>> 7d05f9cb7d074d7b841f50c0e95e36db2c6be474
