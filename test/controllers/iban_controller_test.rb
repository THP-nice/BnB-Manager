require 'test_helper'

class IbanControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get iban_new_url
    assert_response :success
  end

  test "should get create" do
    get iban_create_url
    assert_response :success
  end

  test "should get edit" do
    get iban_edit_url
    assert_response :success
  end

end
