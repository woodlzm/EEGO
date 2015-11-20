# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#t1= User.create(email: "mrshi1994@gmail.com", encrypted_password: "$2a$10$iz/HOog0t0EB4Fbt.f6qNe4l0JC4kzS5v.Nn2fJDUMCCM0/sgFMwO")
#Notification.create(userid: 1, message: "have a try", user_id: t1.id)


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
Adventure.create(location: "a", num_people: 12, num_day: 3, plan: "Hiking", user_id: 1);
