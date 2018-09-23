require 'test_helper'

class WoldcharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get woldcharacters_index_url
    assert_response :success
  end

  test "should get new" do
    get woldcharacters_new_url
    assert_response :success
  end

end
