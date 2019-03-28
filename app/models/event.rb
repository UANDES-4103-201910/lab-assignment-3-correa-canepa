class Event < ApplicationRecord
	belongs_to :venue, required:false
	has_many :tickets

  def most_tickets_sold
		most_sold = (Ticket.group(:event_id).count())
		most_sold = most_sold.max_by{|k,v| v}
		puts "event_id: #{most_sold[0]} cant: #{[most_sold[1]]}"
		return most_sold[0]
	end

  def highest_revenue
		most_sold = (Ticket.group(:event_id).sum(:price))
		most_sold = most_sold.max_by{|k,v| v}
		puts "event_id: #{most_sold[0]} cant: #{[most_sold[1]]}"
		return most_sold[0]
	end

end