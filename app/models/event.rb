class Event < ApplicationRecord
	belongs_to :venue, required:false
	has_many :tickets

  def most_tickets_sold
		most_sold = (Ticket.group(:event_id).count())
		most_sold = most_sold.max_by{|k,v| v}
		puts "event_id: #{most_sold[0]} cant: #{[most_sold[1]]}"
		return Event.find(most_sold[0])
	end

  def highest_revenue
		grouped_list = (Ticket.group(:event_id).sum(:price))
		highest_revenue = grouped_list.max_by{|k,v| v}
		puts "event_id: #{highest_revenue[0]} cant: #{[highest_revenue[1]]}"
		return Event.find(highest_revenue[0])
	end

end