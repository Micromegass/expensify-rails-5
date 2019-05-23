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
    @expense = Expense.update(params[:id], expense_params)
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    respond_to do |format|
      format.js
    end
  end



  private
  def expense_params
    params.require(:expense).permit(:description, :date, :type, :amount, :id, :category)
  end

end
