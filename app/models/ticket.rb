class Ticket < ApplicationRecord
  belongs_to :event, required:false
  belongs_to :order, required:false
  has_one :category
end
