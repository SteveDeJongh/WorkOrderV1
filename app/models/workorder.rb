class Workorder < ApplicationRecord
  before_create :set_customer_and_item_values

  belongs_to :user

  has_many :comments, dependent: :destroy #comments will be destoyed if WO is deleted.

  private

  def set_customer_and_item_values
    customer = Customer.find(self.customer_id)
    cust_item = CustItem.all.select {|m| m.customer_id == self.customer_id && m.id == self.cust_item_id }[0]
    self.customerName = customer.firstName + " " + customer.lastName
    self.itemDesc = cust_item.make + ' ' + cust_item.model
  end
end
