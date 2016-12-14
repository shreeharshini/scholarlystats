require 'test_helper'

class LibraryAccountDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get library_account_details_index_url
    assert_response :success
  end

end
