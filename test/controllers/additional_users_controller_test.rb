require 'test_helper'

class AdditionalUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @additional_user = additional_users(:one)
  end

  test "should get index" do
    get additional_users_url
    assert_response :success
  end

  test "should get new" do
    get new_additional_user_url
    assert_response :success
  end

  test "should create additional_user" do
    assert_difference('AdditionalUser.count') do
      post additional_users_url, params: { additional_user: {  } }
    end

    assert_redirected_to additional_user_url(AdditionalUser.last)
  end

  test "should show additional_user" do
    get additional_user_url(@additional_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_additional_user_url(@additional_user)
    assert_response :success
  end

  test "should update additional_user" do
    patch additional_user_url(@additional_user), params: { additional_user: {  } }
    assert_redirected_to additional_user_url(@additional_user)
  end

  test "should destroy additional_user" do
    assert_difference('AdditionalUser.count', -1) do
      delete additional_user_url(@additional_user)
    end

    assert_redirected_to additional_users_url
  end
end
