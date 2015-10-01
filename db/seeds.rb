# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:email => 'admin@ad.ad', :password => 'qwertyui', :password_confirmation => 'qwertyui', role => 'admin')
User.create!(:email => 'user1@ad.ad', :password => 'qwertyui', :password_confirmation => 'qwertyui')
User.create!(:email => 'user2@ad.ad', :password => 'qwertyui', :password_confirmation => 'qwertyui')
User.create!(:email => 'user3@ad.ad', :password => 'qwertyui', :password_confirmation => 'qwertyui')

30.times do |n|
  Email.create!(   
    email: "subscriber#{n+1}@ad.ad",
    description: Faker::Lorem.paragraph(7),
    user_id: rand(1..4)
  )
end   