require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get jobs" do
    get :jobs
    assert_response :success
  end

  test "should get locations" do
    get :locations
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

  test "should get descriptions" do
    get :descriptions
    assert_response :success
  end

  test "should get finished" do
    get :finished
    assert_response :success
  end

end
