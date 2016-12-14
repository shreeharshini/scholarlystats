require 'test_helper'

class DownloadFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get download_files_index_url
    assert_response :success
  end

  test "should get csv" do
    get download_files_csv_url
    assert_response :success
  end

  test "should get xlsx" do
    get download_files_xlsx_url
    assert_response :success
  end

  test "should get zip" do
    get download_files_zip_url
    assert_response :success
  end

end
