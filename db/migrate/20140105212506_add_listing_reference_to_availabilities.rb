class AddListingReferenceToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :listing_id, :integer
  end
end
