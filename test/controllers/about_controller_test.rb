require 'test_helper'
require_relative 'application_controller_test'

class AboutControllerTest < ApplicationControllerTest
  test "should get index" do
    get :index
    # assert_response :success
  end

end
