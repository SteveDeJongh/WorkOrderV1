class DashboardController < ApplicationController
  def index
    @workorders = Workorder.all.order(id: :desc)
    @customers = Customer.all.order(id: :asc)
  end
end
