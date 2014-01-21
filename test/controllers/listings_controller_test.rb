require 'test_helper'

class ListingsControllerTest < ApplicationControllerTest
  test "should get index" do
    get :index
    assert_response :success
  end

end
