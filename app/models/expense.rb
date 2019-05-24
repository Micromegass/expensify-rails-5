# == Schema Information
#
# Table name: expenses
#
#  id          :integer          not null, primary key
#  date        :date
#  description :string
#  type        :integer
#  amount      :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category    :integer
#

class Expense < ApplicationRecord
  self.inheritance_column = nil

  enum type: [:purchase, :payment, :transfer]
  enum category: [:education, :transport, :food, :alcohol, :rent]
end


def calculate_amount()
  @expenses = Expense.all()
  sum = 0
    @expenses.each do |expense|
      sum = sum + expense.amount
    end
  return sum
end

def calculate_transactions()
  @expenses = Expense.all()
  sum = 0
    @expenses.each do |expense|
      if expense.type == "transfer"
        sum += 1
      end
    end
  return sum
end


def calculate_average()
  number_expenses = Expense.all().count()
  amount = calculate_amount()
  avg = amount/number_expenses
  return avg
end
