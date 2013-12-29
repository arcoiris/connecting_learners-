class Subtopic < ActiveRecord::Base
	has_many :listings, through: :user
	belongs_to :topic
end
class Subtopic < ActiveRecord::Base
	has_many :listings, through: :user
	belongs_to :topic
end
