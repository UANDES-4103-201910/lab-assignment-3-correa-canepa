class Order < ApplicationRecord
  belongs_to :userr, required:false
  has_many :tickets
end
