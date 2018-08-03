require 'test_helper'

class LearningsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get learnings_new_url
    assert_response :success
  end

  test "should get destroy" do
    get learnings_destroy_url
    assert_response :success
  end

end
