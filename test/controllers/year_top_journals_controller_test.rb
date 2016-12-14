require 'test_helper'

class YearTopJournalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get year_top_journals_index_url
    assert_response :success
  end

  test "should get show" do
    get year_top_journals_show_url
    assert_response :success
  end

end
