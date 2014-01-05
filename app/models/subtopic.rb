class Subtopic < ActiveRecord::Base
	has_many :listings
	belongs_to :topic


	def self.search_for(query)
		where('name LIKE :query', query: "%#{query}%")
	end
end
