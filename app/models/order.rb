class Order < ApplicationRecord
  belongs_to :user, required:false
  has_many :tickets
end
