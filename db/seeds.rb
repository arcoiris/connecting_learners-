# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongstopic_ie the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Beginning seeding!"
User.create(name: "Deborah Lora", email: "deborlora@gmail.com", password: "password", zip_code: 11213)

# TOPIC topic_: 1 | FORMAL SCIENCES (its create was done in the console)
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

# TOPIC topic_: 3 | SOCIAL SCIENCES
Topic.create(name: 'Social Sciences')

# TOPIC topic_: 4 | NATURAL SCIENCES
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

	puts "creating fake users"
	25.times do |u|
		User.create(name: Faker::Name.name, email: Faker::Internet.email , password: "password", zip_code: 11213)
	end	
	puts "creating fake listings"
	(1..22).step do |subtopic|
	end

puts "Finished Seeding"