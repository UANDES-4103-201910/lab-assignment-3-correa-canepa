class AddCategoryToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :category_id, :integer
    remove_column :tickets, :category
  end
end
