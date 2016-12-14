require 'test_helper'

class AccountInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_infos_index_url
    assert_response :success
  end

  test "should get show" do
    get account_infos_show_url
    assert_response :success
  end

  test "should get new" do
    get account_infos_new_url
    assert_response :success
  end

  test "should get create" do
    get account_infos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get account_infos_destroy_url
    assert_response :success
  end

end
