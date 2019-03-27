class User < ApplicationRecord
  has_many :orders
  def most_expensive_ticket_bought()
    puts self.name
    #puts Ticket.find_by()
    #Author.joins("INNER JOIN posts ON posts.author_id = authors.id AND posts.published = 't'")

  end

end
