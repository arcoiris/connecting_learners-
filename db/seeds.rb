# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Beginning seeding!"
# TOPIC ID: 1 | FORMAL SCIENCES (its create was done in the console)
	Subtopic.create(name: "Computer Science", id: 1)
	Subtopic.create(name: "Logic", id: 1)
	Subtopic.create(name: "Mathematics", id: 1)
	Subtopic.create(name: "Statistics", id: 1)
	Subtopic.create(name: "Systems Science", id: 1)

# TOPIC ID: 2 | HUMANITIES
Topic.create(name: "Humanities")
	Subtopic.create(name: 'History', id: 2)
	Subtopic.create(name: 'Linguistics', id: 2)
	Subtopic.create(name: 'Literature', id: 2)
	Subtopic.create(name: 'Performing Arts', id: 2)
	Subtopic.create(name: 'Philosophy', id: 2)
	Subtopic.create(name: 'Visual Arts', id: 2)

# TOPIC ID: 3 | SOCIAL SCIENCES
Topic.create(name: 'Social Sciences')

# TOPIC ID: 4 | NATURAL SCIENCES
Topic.create(name: 'Natural Sciences')
	Subtopic.create(name: 'Space Sciences', id: 3)
	Subtopic.create(name: 'Earth Sciences', id: 3)
	Subtopic.create(name: 'Life Sciences', id: 3)
	Subtopic.create(name: 'Chemistry', id: 3)
	Subtopic.create(name: 'Physics', id: 3)

Topic.create(name: 'Applied Sciences')
	Subtopic.create(name: 'Agriculture', id: 4)
	Subtopic.create(name: 'Architecture and Design', id: 4)
	Subtopic.create(name: 'Business', id: 4)
	Subtopic.create(name: 'Education', id: 4)
	Subtopic.create(name: 'Engineering', id: 4)
	Subtopic.create(name: 'Environmental Studies', id: 4)


puts "Finished Seeding"