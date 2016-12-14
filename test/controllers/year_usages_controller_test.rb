require 'test_helper'

class YearUsagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get year_usages_index_url
    assert_response :success
  end

  test "should get show" do
    get year_usages_show_url
    assert_response :success
  end

end
