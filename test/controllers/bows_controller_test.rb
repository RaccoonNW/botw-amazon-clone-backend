require "test_helper"

class BowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bows_index_url
    assert_response :success
  end

  test "should get show" do
    get bows_show_url
    assert_response :success
  end
end
