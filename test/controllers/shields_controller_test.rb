require "test_helper"

class ShieldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shields_index_url
    assert_response :success
  end

  test "should get show" do
    get shields_show_url
    assert_response :success
  end
end
