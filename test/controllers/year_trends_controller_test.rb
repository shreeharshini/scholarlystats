require 'test_helper'

class YearTrendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get year_trends_index_url
    assert_response :success
  end

  test "should get show" do
    get year_trends_show_url
    assert_response :success
  end

end
