class AddMeetingTypeToListings < ActiveRecord::Migration
  def change
    add_column :listings, :virtual, :boolean
    add_column :listings, :in_person, :boolean
  end
end
