require "application_system_test_case"

class MyCartsTest < ApplicationSystemTestCase
  setup do
    @my_cart = my_carts(:one)
  end

  test "visiting the index" do
    visit my_carts_url
    assert_selector "h1", text: "My Carts"
  end

  test "creating a My cart" do
    visit my_carts_url
    click_on "New My Cart"

    click_on "Create My cart"

    assert_text "My cart was successfully created"
    click_on "Back"
  end

  test "updating a My cart" do
    visit my_carts_url
    click_on "Edit", match: :first

    click_on "Update My cart"

    assert_text "My cart was successfully updated"
    click_on "Back"
  end

  test "destroying a My cart" do
    visit my_carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My cart was successfully destroyed"
  end
end
