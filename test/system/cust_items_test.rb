require "application_system_test_case"

class CustItemsTest < ApplicationSystemTestCase
  setup do
    @cust_item = cust_items(:one)
  end

  test "visiting the index" do
    visit cust_items_url
    assert_selector "h1", text: "Cust items"
  end

  test "should create cust item" do
    visit cust_items_url
    click_on "New cust item"

    click_on "Create Cust item"

    assert_text "Cust item was successfully created"
    click_on "Back"
  end

  test "should update Cust item" do
    visit cust_item_url(@cust_item)
    click_on "Edit this cust item", match: :first

    click_on "Update Cust item"

    assert_text "Cust item was successfully updated"
    click_on "Back"
  end

  test "should destroy Cust item" do
    visit cust_item_url(@cust_item)
    click_on "Destroy this cust item", match: :first

    assert_text "Cust item was successfully destroyed"
  end
end
