class ExpensesController < ApplicationController
  def index
    # @tab = :expenses
    @expenses = Expense.all.order(date: :desc)
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.create(expense_params)
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @product = Expense.update(params[:id], expense_params)
  end



  private
  def expense_params
    params.require(:exense).permit(:description, :date, :type, :amount)
  end

end
