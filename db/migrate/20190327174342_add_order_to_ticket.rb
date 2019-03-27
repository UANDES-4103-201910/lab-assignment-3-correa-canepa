class AddOrderToTicket < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :order_id, :integer
  end
end
