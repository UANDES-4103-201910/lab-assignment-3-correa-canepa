class User < ApplicationRecord
  has_many :orders
  def f()
    user_orders = Order.where(user_id: self.id).select(:id)
    order_tickets = Ticket.where(order_id: user_orders).select(:price)
    most_expensive_ticket = (order_tickets.order(:price).reverse_order).first
    most_expensive_ticket

    #Instance method most_expensive_ticket_bought, which returns the price of the
    #most expensive ticket bought by the user.
  end
end
