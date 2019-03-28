class ChangeCategoryTypeInTickets < ActiveRecord::Migration[5.2]
  def change
    change_column :tickets, :category, :integer
  end
end
