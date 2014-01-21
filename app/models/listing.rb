class ListingValidator < ActiveModel::Validator
	def validate(virtual) 
		unless virtual || in_person 
			errors.add(:virtual, "must be true and/or in person must be true")
		end
	end
end

class Listing < ActiveRecord::Base
	scope :recent, -> { where('created_at >= ?', Date.today - 30) }
	scope :virtual, -> { where(virtual: true) }
	scope :in_person, -> { where(in_person: true) }
	has_many :notifications
	belongs_to :user
	belongs_to :subtopic
	geocoded_by :address
	validates :title, :subtopic_id, :description, presence: :true
	validates :title, length: { in: 10..100 } 
	validates :description, length: { in: 10..1000 }
	validates :address, presence: :true, if: :in_person
	# validates :virtual, acceptance: :true, unless: :in_person
	# validates :in_person, acceptance: :true, unless: :virtual
	after_validation :geocode, :if => :address_changed?
end

