require "application_system_test_case"

class AccountantsTest < ApplicationSystemTestCase
  setup do
    @accountant = accountants(:one)
  end

  test "visiting the index" do
    visit accountants_url
    assert_selector "h1", text: "Accountants"
  end

  test "should create accountant" do
    visit accountants_url
    click_on "New accountant"

    fill_in "Address", with: @accountant.address
    fill_in "Email", with: @accountant.email
    fill_in "Name", with: @accountant.name
    fill_in "Phone number", with: @accountant.phone_number
    click_on "Create Accountant"

    assert_text "Accountant was successfully created"
    click_on "Back"
  end

  test "should update Accountant" do
    visit accountant_url(@accountant)
    click_on "Edit this accountant", match: :first

    fill_in "Address", with: @accountant.address
    fill_in "Email", with: @accountant.email
    fill_in "Name", with: @accountant.name
    fill_in "Phone number", with: @accountant.phone_number
    click_on "Update Accountant"

    assert_text "Accountant was successfully updated"
    click_on "Back"
  end

  test "should destroy Accountant" do
    visit accountant_url(@accountant)
    click_on "Destroy this accountant", match: :first

    assert_text "Accountant was successfully destroyed"
  end
end
