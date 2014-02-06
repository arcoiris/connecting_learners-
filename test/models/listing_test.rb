require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  test "Meeting type must only be 'In-person', 'Virtual', or 'In-person and virtual'" do
    listing = Listing.new
    listing.title = "A title"
    listing.subtopic_id = '1'
    listing.description = "Totally long description..."
    assert listing.invalid?, "Should be invalid"

    listing.meeting_type = "In-person"
    assert listing.valid?, "When 'In-person' meeting type is chosen, listing should be valid"

    listing.meeting_type = "Virtual"
    assert listing.valid?, "When 'Virtual' meeting type is chosen, listing should be valid"

    listing.meeting_type = "Both"
    assert listing.valid? "When 'In-person and virtual' meeting type is chosen, listing should be valid"

    listing.meeting_type = "Common sandwiches"
    assert listing.invalid?, "Any other options besides in-person, virtual, and in-person and virtual should be invalid"
  end
end
