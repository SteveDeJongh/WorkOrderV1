class Customer < ApplicationRecord
  has_many :cust_items

  validates :firstName, :lastName, presence: true
  validates :phone, presence: true, length: {minimum: 10 }
end
