class ChangeTypeColumnOnCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :type
    add_column :categories, :category_type, :string
  end
end
