class Venue < ApplicationRecord
  has_many :events

  def last_attendance
    last_event = Event.where("venue_id = #{self.id}").order(:start_date).last
    event_id = last_event.id
    tickets = Ticket.where("event_id = #{event_id}")
    sold_tickets = tickets.count
    puts "Amount: #{sold_tickets}"
    return sold_tickets
  end

end
