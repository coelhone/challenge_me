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

Challenge.where(user_id: user.id, name: "challenge_1_test_created", desc: "fazer uma soma", state: "created").first_or_create
Challenge.where(user_id: user.id, name: "challenge_2_test_active", desc: "fazer uma subtracção", state: "active").first_or_create
Challenge.where(user_id: user.id, name: "challenge_3_test_closed", desc: "fazer uma sadadasdasd", state: "closed").first_or_create
Challenge.where(user_id: user2.id, name: "challenge_4_test2_created", desc: "fazer uma divisão", state: "created").first_or_create
Challenge.where(user_id: user2.id, name: "challenge_5_test2_active", desc: "fazer uma mutliplicação balalalalalalalalalalalalaal", state: "active").first_or_create
Challenge.where(user_id: user2.id, name: "challenge_6_test2_closed", desc: "fazer uma mutliplicação asdh sdjhf hjsdbf sbdfsdkfb ksdfbksdjfb ksdbfkjsdbf alalalalalalaal", state: "closed").first_or_create