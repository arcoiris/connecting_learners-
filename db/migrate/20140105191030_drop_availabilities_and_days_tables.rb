class DropAvailabilitiesAndDaysTables < ActiveRecord::Migration
# no longer using associations to handle availabilities
  def change
  	drop_table :days
  	drop_table :availabilities
  end
end
