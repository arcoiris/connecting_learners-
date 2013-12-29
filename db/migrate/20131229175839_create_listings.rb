class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.integer :subtopic_id
      t.text :description

      t.timestamps
    end
  end
end
