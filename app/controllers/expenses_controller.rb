class ExpensesController < ApplicationController
  def index
    # @tab = :expenses
    @expenses = Expense.all.order(date: :desc)
  end
end
