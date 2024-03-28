require "test_helper"

class CustItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cust_item = cust_items(:one)
  end

  test "should get index" do
    get cust_items_url
    assert_response :success
  end

  test "should get new" do
    get new_cust_item_url
    assert_response :success
  end

  test "should create cust_item" do
    assert_difference("CustItem.count") do
      post cust_items_url, params: { cust_item: {  } }
    end

    assert_redirected_to cust_item_url(CustItem.last)
  end

  test "should show cust_item" do
    get cust_item_url(@cust_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_cust_item_url(@cust_item)
    assert_response :success
  end

  test "should update cust_item" do
    patch cust_item_url(@cust_item), params: { cust_item: {  } }
    assert_redirected_to cust_item_url(@cust_item)
  end

  test "should destroy cust_item" do
    assert_difference("CustItem.count", -1) do
      delete cust_item_url(@cust_item)
    end

    assert_redirected_to cust_items_url
  end
end
