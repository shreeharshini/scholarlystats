require 'test_helper'

class PlatformReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @platform_report = platform_reports(:one)
  end

  test "should get index" do
    get platform_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_platform_report_url
    assert_response :success
  end

  test "should create platform_report" do
    assert_difference('PlatformReport.count') do
      post platform_reports_url, params: { platform_report: { platform_id: @platform_report.platform_id, report_id: @platform_report.report_id } }
    end

    assert_redirected_to platform_report_url(PlatformReport.last)
  end

  test "should show platform_report" do
    get platform_report_url(@platform_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_platform_report_url(@platform_report)
    assert_response :success
  end

  test "should update platform_report" do
    patch platform_report_url(@platform_report), params: { platform_report: { platform_id: @platform_report.platform_id, report_id: @platform_report.report_id } }
    assert_redirected_to platform_report_url(@platform_report)
  end

  test "should destroy platform_report" do
    assert_difference('PlatformReport.count', -1) do
      delete platform_report_url(@platform_report)
    end

    assert_redirected_to platform_reports_url
  end
end
