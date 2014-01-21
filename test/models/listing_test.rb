require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  test "requires either in_person or virtual" do
    listing = Listing.new
    listing.title = "A title"
    listing.subtopic_id = '1'
    listing.description = "Totally long description..."
    assert listing.invalid?, "Should be invalid"

    listing.in_person = true
    assert listing.valid?, "Should be valid"

    listing.in_person = false
    listing.virtual = true
		assert listing.valid?, "Should be valid"
  end
end
