require "test_helper"

class ActionItemControllerTest < ActionDispatch::IntegrationTest
  test "should get itemA" do
    get action_item_itemA_url
    assert_response :success
  end

  test "should get itemB" do
    get action_item_itemB_url
    assert_response :success
  end

  test "should get itemC" do
    get action_item_itemC_url
    assert_response :success
  end
end
