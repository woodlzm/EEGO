# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t1= User.create(email: "mrshi1994@gmail.com", encrypted_password: "$2a$10$iz/HOog0t0EB4Fbt.f6qNe4l0JC4kzS5v.Nn2fJDUMCCM0/sgFMwO")
Notification.create(userid: 1, message: "have a try", user_id: t1.id)