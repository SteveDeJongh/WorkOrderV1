require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "should create customer" do
    visit customers_url
    click_on "New customer"

    fill_in "Address", with: @customer.address
    fill_in "City", with: @customer.city
    fill_in "Country", with: @customer.country
    fill_in "Email", with: @customer.email
    fill_in "Firstname", with: @customer.firstName
    fill_in "Lastname", with: @customer.lastName
    fill_in "Phone", with: @customer.phone
    fill_in "Postal", with: @customer.postal
    fill_in "Province", with: @customer.province
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "should update Customer" do
    visit customer_url(@customer)
    click_on "Edit this customer", match: :first

    fill_in "Address", with: @customer.address
    fill_in "City", with: @customer.city
    fill_in "Country", with: @customer.country
    fill_in "Email", with: @customer.email
    fill_in "Firstname", with: @customer.firstName
    fill_in "Lastname", with: @customer.lastName
    fill_in "Phone", with: @customer.phone
    fill_in "Postal", with: @customer.postal
    fill_in "Province", with: @customer.province
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer" do
    visit customer_url(@customer)
    click_on "Destroy this customer", match: :first

    assert_text "Customer was successfully destroyed"
  end
end
