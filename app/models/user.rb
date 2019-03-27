class User < ApplicationRecord
  has_many :orders
  def f()
    #user_orders = Order.where(user_id: self.id)
    #order_tickets = user_orders.where(order)

    #Instance method most_expensive_ticket_bought, which returns the price of the
    #most expensive ticket bought by the user.
  end
end
