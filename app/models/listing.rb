class Listing < ActiveRecord::Base
	scope :recent, -> { where('created_at >= ?', Date.today - 30) }
	scope :virtual, -> { where(virtual: true) }
	scope :in_person, -> { where(in_person: true) }
	has_many :notifications
	belongs_to :user
	belongs_to :subtopic
	geocoded_by :address
	
	after_validation :geocode, :if => :address_changed?

	def self.by_subtopic(id)
		Listing.where(subtopic_id: id)
	end

	def self.by_virtual(virtual)
		Listing.where(virtual: virtual)
	end

	def self.by_in_person(in_person)

	end  
end

