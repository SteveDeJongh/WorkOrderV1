class Workorder < ApplicationRecord
  before_create :set_customer_and_item_values

  belongs_to :user

  has_many :comments, dependent: :destroy #comments will be destoyed if WO is deleted.

  private

  def set_customer_and_item_values
    customer = Customer.find(2)
    cust_item = CustItem.all.select {|m| m.customer_id == 2 && m.id == 3 }[0]
    self.customer = customer.firstName + " " + customer.lastName
    self.item = cust_item.make + ' ' + cust_item.model
  end
end
