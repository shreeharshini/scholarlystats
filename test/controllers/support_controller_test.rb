require 'test_helper'

class SupportControllerTest < ActionDispatch::IntegrationTest
  test "should get contactus" do
    get support_contactus_url
    assert_response :success
  end

  test "should get faq" do
    get support_faq_url
    assert_response :success
  end

  test "should get aboutus" do
    get support_aboutus_url
    assert_response :success
  end

end
