require "application_system_test_case"

class FixedExpensesTest < ApplicationSystemTestCase
  setup do
    @fixed_expense = fixed_expenses(:one)
  end

  test "visiting the index" do
    visit fixed_expenses_url
    assert_selector "h1", text: "Fixed expenses"
  end

  test "should create fixed expense" do
    visit fixed_expenses_url
    click_on "New fixed expense"

    fill_in "Expense type", with: @fixed_expense.expense_type
    fill_in "Gross amount", with: @fixed_expense.gross_amount
    fill_in "Name", with: @fixed_expense.name
    fill_in "Net amount", with: @fixed_expense.net_amount
    fill_in "Vat", with: @fixed_expense.vat
    click_on "Create Fixed expense"

    assert_text "Fixed expense was successfully created"
    click_on "Back"
  end

  test "should update Fixed expense" do
    visit fixed_expense_url(@fixed_expense)
    click_on "Edit this fixed expense", match: :first

    fill_in "Expense type", with: @fixed_expense.expense_type
    fill_in "Gross amount", with: @fixed_expense.gross_amount
    fill_in "Name", with: @fixed_expense.name
    fill_in "Net amount", with: @fixed_expense.net_amount
    fill_in "Vat", with: @fixed_expense.vat
    click_on "Update Fixed expense"

    assert_text "Fixed expense was successfully updated"
    click_on "Back"
  end

  test "should destroy Fixed expense" do
    visit fixed_expense_url(@fixed_expense)
    click_on "Destroy this fixed expense", match: :first

    assert_text "Fixed expense was successfully destroyed"
  end
end
