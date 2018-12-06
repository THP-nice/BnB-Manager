require 'test_helper'

class PropertyControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get property_new_url
    assert_response :success
  end

  test "should get create" do
    get property_create_url
    assert_response :success
  end

end
