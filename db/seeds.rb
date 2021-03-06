# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.all
user  = users.first

99.times do |n|
  user.notes.create!(	title: 		Faker::Book.title,
               			content: 	Faker::Hipster.paragraphs(1))
end
