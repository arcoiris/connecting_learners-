class RemoveInPersonColumn < ActiveRecord::Migration
  def change
  	remove_column(:listings, :in_person)
  end
end
