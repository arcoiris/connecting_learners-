class Subtopic < ActiveRecord::Base
	has_many :listings
	belongs_to :topic
end
