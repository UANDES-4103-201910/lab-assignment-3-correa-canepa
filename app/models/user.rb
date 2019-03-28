class User < ApplicationRecord
  has_many :orders
  def most_expensive_ticket_bought()
    user_orders = Order.where(user_id: self.id).select(:id)
    order_tickets = Ticket.where(order_id: user_orders).select(:price)
    most_expensive_ticket = (order_tickets.order(:price).reverse_order).first
    #most_expensive_ticket
    #Instance method most_expensive_ticket_bought, which returns the price of the
    #most expensive ticket bought by the user.
  end

  def most_expensive_ticket_bought_between(start_date, end_date)
    user_orders = Order.where(user_id: self.id, created_at: start_date..end_date).select(:id)
    order_tickets = Ticket.where(order_id: user_orders).select(:price)
    most_expensive_ticket_between = (order_tickets.order(:price).reverse_order).first
    #most_expensive_ticket_between
    #Instance method most_expensive_ticket_bought_between, which receives two dates
    #(start and end dates) as arguments and returns the most expensive ticket bought by
    #the user between the specified dates.
  end

  def last_event()
    user_orders = Order.where(user_id: self.id).select(:id)
    order_tickets = Ticket.where(order_id: user_orders).select(:event_id)
    tickets_events = (Event.where(id: order_tickets).order(:start_date).select(:name).reverse_order.first)
    #tickets_events
    #Instance method last_event, which returns the name of the last event for which the user bought a ticket.
  end
end
