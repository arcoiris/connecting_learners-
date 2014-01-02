class Listing < ActiveRecord::Base
	belongs_to :user
	belongs_to :subtopic
	geocoded_by :address  
	
	after_validation :geocode, :if => :address_changed?
end

