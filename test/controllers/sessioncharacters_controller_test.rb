require 'test_helper'

class SessioncharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sessioncharacters_index_url
    assert_response :success
  end

end
