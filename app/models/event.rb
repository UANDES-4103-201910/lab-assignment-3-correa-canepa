class Event < ApplicationRecord
	belongs_to :venue, required:false
	has_many :tickets

  def most_tickets_sold()
		ticket_group = (Ticket.group(:event_id).count)
		most_sold = ticket_group.max_by{|k,v| v}
		puts "Event_id: #{most_sold[0]} amount: #{most_sold[1]}"
		return Event.find(most_sold[0])
	end

  def highest_revenue()
		ticket_sum_group = (Ticket.group(:event_id).sum(:price))
		most_sold = ticket_sum_group.max_by{|k,v| v}
		puts "Event_id: #{most_sold[0]} amount: #{most_sold[1]}"
		return Event.find(most_sold[0])
	end

end