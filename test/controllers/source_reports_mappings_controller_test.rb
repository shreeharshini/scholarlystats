require 'test_helper'

class SourceReportsMappingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get source_reports_mappings_index_url
    assert_response :success
  end

  test "should get new" do
    get source_reports_mappings_new_url
    assert_response :success
  end

  test "should get create" do
    get source_reports_mappings_create_url
    assert_response :success
  end

  test "should get show" do
    get source_reports_mappings_show_url
    assert_response :success
  end

end
