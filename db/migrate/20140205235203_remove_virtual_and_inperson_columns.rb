class RemoveVirtualAndInpersonColumns < ActiveRecord::Migration
  def change
  	remove_column(:listings, :virtual, :in_person)
  end
end
