require "test_helper"

class ShopperControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get shopper_list_url
    assert_response :success
  end
end
