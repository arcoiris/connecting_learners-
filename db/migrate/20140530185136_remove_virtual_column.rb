class RemoveVirtualColumn < ActiveRecord::Migration
  def change
  	remove_column(:listings, :virtual)
  end
end
