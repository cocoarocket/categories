require 'test_helper'

class HomePagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

end