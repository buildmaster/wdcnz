require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  test "should get speakers" do
    get :speakers
    assert_response :success
  end

  test "should get venue" do
    get :venue
    assert_response :success
  end

end
