class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
    	t.integer :day_id

      t.timestamps
    end
  end
end
