class DashboardController < ApplicationController
  def index
    @workorders = Workorder.all.order(created_at: :desc)
    @customers = Customer.all.order(lastName: :asc)
  end
end
