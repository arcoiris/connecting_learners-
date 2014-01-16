# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongstopic_ie the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Beginning seeding!"
# TOPIC topic_: 1 | FORMAL SCIENCES (its create was done in the console)
Topic.create(name: "Formal Sciences")
	Subtopic.create(name: "Computer Science", topic_id: 1)
	Subtopic.create(name: "Logic", topic_id: 1)
	Subtopic.create(name: "Mathematics", topic_id: 1)
	Subtopic.create(name: "Statistics", topic_id: 1)
	Subtopic.create(name: "Systems Science", topic_id: 1)

# TOPIC topic_: 2 | HUMANITIES seeding!
Topic.create(name: "Humanities")
	Subtopic.create(name: 'History', topic_id: 2)
	Subtopic.create(name: 'Linguistics', topic_id: 2)
	Subtopic.create(name: 'Literature', topic_id: 2)
	Subtopic.create(name: 'Performing Arts', topic_id: 2)
	Subtopic.create(name: 'Philosophy', topic_id: 2)
	Subtopic.create(name: 'Visual Arts', topic_id: 2)

# TOPIC topic_: 3 | NATURAL SCIENCES
Topic.create(name: 'Natural Sciences')
	Subtopic.create(name: 'Space Sciences', topic_id: 3)
	Subtopic.create(name: 'Earth Sciences', topic_id: 3)
	Subtopic.create(name: 'Life Sciences', topic_id: 3)
	Subtopic.create(name: 'Chemistry', topic_id: 3)
	Subtopic.create(name: 'Physics', topic_id: 3)

Topic.create(name: 'Applied Sciences')
	Subtopic.create(name: 'Agriculture', topic_id: 4)
	Subtopic.create(name: 'Architecture and Design', topic_id: 4)
	Subtopic.create(name: 'Business', topic_id: 4)
	Subtopic.create(name: 'Education', topic_id: 4)
	Subtopic.create(name: 'Engineering', topic_id: 4)
	Subtopic.create(name: 'Environmental Studies', topic_id: 4)

	puts "creating user case users!"
		User.create!(name: "Deborah Lora", email: "deborlora@gmail.com", password: "password", zip_code: 11213, about: Faker::Lorem.paragraph )
		User.create!(name: "Dagny Jones", email: "dagnyjones@gmail.com", password: "password", zip_code: 11213, about: Faker::Lorem.paragraph )
		Listing.create(title: "Looking for a Ruby on Rails beginner to pair code with!", description: "Hi there, I've recently finished a back-end web development course at General Assembly! Express interest, and I'll get back to you!", virtual: [true, false].sample, in_person: [true, false].sample , user_id: 1, subtopic_id: rand(1..5), address: "11213")
	5.times do
		Listing.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, virtual: [true, false].sample , in_person: [true, false].sample , user_id: 1, subtopic_id: rand(1..5), address: "11213")
		Listing.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, virtual: [true, false].sample , in_person: [true, false].sample , user_id: 2, subtopic_id: rand(1..5), address: "11213")
	end
	puts "creating fake users"
	25.times do |u|
		User.create!(name: Faker::Name.name, email: Faker::Internet.email , password: "password", zip_code: 11213, about: Faker::Lorem.paragraph)
	end	
	puts "creating fake listings"
	(1..22).step do |subtopic|
		25.times do 
			Listing.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, virtual: [true, false].sample , in_person: [true, false].sample , user_id:rand(1..26), subtopic_id: subtopic, address: ["11213", "11225"].sample)
		end
	end
puts "Finished Seeding"


