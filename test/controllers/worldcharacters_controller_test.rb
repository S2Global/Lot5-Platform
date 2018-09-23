require 'test_helper'

class WorldcharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get worldcharacters_new_url
    assert_response :success
  end

end
