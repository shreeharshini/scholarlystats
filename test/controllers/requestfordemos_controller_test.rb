require 'test_helper'

class RequestfordemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requestfordemo = requestfordemos(:one)
  end

  test "should get index" do
    get requestfordemos_url
    assert_response :success
  end

  test "should get new" do
    get new_requestfordemo_url
    assert_response :success
  end

  test "should create requestfordemo" do
    assert_difference('Requestfordemo.count') do
      post requestfordemos_url, params: { requestfordemo: { email: @requestfordemo.email, library: @requestfordemo.library, message: @requestfordemo.message, number: @requestfordemo.number, username: @requestfordemo.username } }
    end

    assert_redirected_to requestfordemo_url(Requestfordemo.last)
  end

  test "should show requestfordemo" do
    get requestfordemo_url(@requestfordemo)
    assert_response :success
  end

  test "should get edit" do
    get edit_requestfordemo_url(@requestfordemo)
    assert_response :success
  end

  test "should update requestfordemo" do
    patch requestfordemo_url(@requestfordemo), params: { requestfordemo: { email: @requestfordemo.email, library: @requestfordemo.library, message: @requestfordemo.message, number: @requestfordemo.number, username: @requestfordemo.username } }
    assert_redirected_to requestfordemo_url(@requestfordemo)
  end

  test "should destroy requestfordemo" do
    assert_difference('Requestfordemo.count', -1) do
      delete requestfordemo_url(@requestfordemo)
    end

    assert_redirected_to requestfordemos_url
  end
end
