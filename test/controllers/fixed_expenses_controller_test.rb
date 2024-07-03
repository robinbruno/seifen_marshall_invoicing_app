require "test_helper"

class FixedExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fixed_expense = fixed_expenses(:one)
  end

  test "should get index" do
    get fixed_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_fixed_expense_url
    assert_response :success
  end

  test "should create fixed_expense" do
    assert_difference("FixedExpense.count") do
      post fixed_expenses_url, params: { fixed_expense: { expense_type: @fixed_expense.expense_type, gross_amount: @fixed_expense.gross_amount, name: @fixed_expense.name, net_amount: @fixed_expense.net_amount, vat: @fixed_expense.vat } }
    end

    assert_redirected_to fixed_expense_url(FixedExpense.last)
  end

  test "should show fixed_expense" do
    get fixed_expense_url(@fixed_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_fixed_expense_url(@fixed_expense)
    assert_response :success
  end

  test "should update fixed_expense" do
    patch fixed_expense_url(@fixed_expense), params: { fixed_expense: { expense_type: @fixed_expense.expense_type, gross_amount: @fixed_expense.gross_amount, name: @fixed_expense.name, net_amount: @fixed_expense.net_amount, vat: @fixed_expense.vat } }
    assert_redirected_to fixed_expense_url(@fixed_expense)
  end

  test "should destroy fixed_expense" do
    assert_difference("FixedExpense.count", -1) do
      delete fixed_expense_url(@fixed_expense)
    end

    assert_redirected_to fixed_expenses_url
  end
end
