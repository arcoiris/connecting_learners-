# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongstopic_ie the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Beginning seeding!"
# DAY days of the week
	Day.create(name: "Monday")
	Day.create(name: "Tuesday")
	Day.create(name: "Wednesday")
	Day.create(name: "Thursday")
	Day.create(name: "Friday")
	Day.create(name: "Saturday")
	Day.create(name: "Sunday")

puts "Finished seeding days! On to Topics & Subtopics"

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


puts "Finished Seeding"