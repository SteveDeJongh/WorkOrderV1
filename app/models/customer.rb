class Customer < ApplicationRecord
  has_many :cust_items

  validates :firstName, :lastName, presence: true
  validates :phone, presence: true, length: {minimum: 10 }


  def self.ransackable_attributes(auth_object = nil)
    ["address", "city", "country", "created_at", "email", "firstName", "id", "id_value", "lastName", "phone", "postal", "province", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["cust_items"]
  end
end
