class Availability < ActiveRecord::Base
	has_many :days
	belongs_to :listing
end
