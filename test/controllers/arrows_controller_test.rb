require "test_helper"

class ArrowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arrows_index_url
    assert_response :success
  end

  test "should get show" do
    get arrows_show_url
    assert_response :success
  end
end
