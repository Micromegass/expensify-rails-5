class AddCategoryToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_column :expenses, :category, :integer
  end
end
