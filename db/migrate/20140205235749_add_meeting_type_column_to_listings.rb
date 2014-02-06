class AddMeetingTypeColumnToListings < ActiveRecord::Migration
  def change
  	add_column(:listings, :meeting_type, :string)
  end
end
