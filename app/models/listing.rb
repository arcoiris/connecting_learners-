class Listing < ActiveRecord::Base
	scope :recent, -> { where('created_at >= ?', Date.today - 30) }
	has_many :notifications
	belongs_to :user
	belongs_to :subtopic
	geocoded_by :address
	validates :title, :subtopic_id, :description, presence: :true
	validates :title, length: { in: 10..100 } 
	validates :description, length: { in: 10..1000 }
	validates :address, presence: :true, if: :in_person?
	validates :meeting_type, inclusion:  { 	in: ["In-person", "Virtual", "Both"] }
	after_validation :geocode, :if => :address_changed?

	def in_person?
		meeting_type == 'In-person' || meeting_type == 'Both'
	end
end