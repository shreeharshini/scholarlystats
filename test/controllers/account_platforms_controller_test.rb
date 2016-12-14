require 'test_helper'

class AccountPlatformsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_platforms_index_url
    assert_response :success
  end

  test "should get new" do
    get account_platforms_new_url
    assert_response :success
  end

  test "should get create" do
    get account_platforms_create_url
    assert_response :success
  end

end
