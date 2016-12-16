require 'test_helper'

class CounterAndCustomReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get counter_and_custom_reports_index_url
    assert_response :success
  end

end
