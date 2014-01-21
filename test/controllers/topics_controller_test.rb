require 'test_helper'

class TopicsControllerTest < ApplicationControllerTest
  test "should get show" do
    topic = Topic.create
    get :show, id: topic.id
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get destroy" do
    topic = Topic.create
    get :destroy, id: topic.id
    assert_response :success
  end

  test "should get create" do
    get :create, {topic: {topic: nil}}
    assert_response :redirect
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
