# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#puts 'DEFAULT USERS'
#user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
#puts 'user: ' << user.name

user = User.where(email: "test@test.pt").first_or_create(name: "test", password: "testtest")
user2 = User.where(email: "test2@test2.pt").first_or_create(name: "test2", password: "test2test2")

Challenge.where(user_id: user.id, name: "challenge_1", desc: "fazer uma soma").first_or_create
Challenge.where(user_id: user.id, name: "challenge_2", desc: "fazer uma subtracção").first_or_create
Challenge.where(user_id: user2.id, name: "challenge_3", desc: "fazer uma divisão").first_or_create
Challenge.where(user_id: user2.id, name: "challenge_4", desc: "fazer uma mutliplicação balalalalalalalalalalalalaal").first_or_create