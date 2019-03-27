class AddEventToTicket < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :event_id, :integer
  end
end
