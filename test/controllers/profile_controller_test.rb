require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get profile_all_url
    assert_response :success
  end

end
