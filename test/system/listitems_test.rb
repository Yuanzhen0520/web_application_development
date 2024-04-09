require "application_system_test_case"

class ListitemsTest < ApplicationSystemTestCase
  setup do
    @listitem = listitems(:one)
  end

  test "visiting the index" do
    visit listitems_url
    assert_selector "h1", text: "Listitems"
  end

  test "should create listitem" do
    visit listitems_url
    click_on "New listitem"

    fill_in "Cart", with: @listitem.cart_id
    fill_in "Product", with: @listitem.product_id
    click_on "Create Listitem"

    assert_text "Listitem was successfully created"
    click_on "Back"
  end

  test "should update Listitem" do
    visit listitem_url(@listitem)
    click_on "Edit this listitem", match: :first

    fill_in "Cart", with: @listitem.cart_id
    fill_in "Product", with: @listitem.product_id
    click_on "Update Listitem"

    assert_text "Listitem was successfully updated"
    click_on "Back"
  end

  test "should destroy Listitem" do
    visit listitem_url(@listitem)
    click_on "Destroy this listitem", match: :first

    assert_text "Listitem was successfully destroyed"
  end
end
