class WorkordersController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]

  def index
    @workorders = Workorder.all.order(created_at: :desc)
  end

  def show
    @workorder = Workorder.find(params[:id])
    @comments = @workorder.comments.order(created_at: :desc)
  end

  def new
    @workorder = Workorder.new
  end

  def create
    @workorder = Workorder.new(workorder_params)
    @workorder.user = current_user
    @workorder.status = params[:workorder][:status]

    if @workorder.save
      redirect_to @workorder
    end
  end

  def edit
    @workorder = Workorder.find(params[:id])
  end

  def update
    @workorder = Workorder.find(params[:id])

    if @workorder.update(workorder_params)
      redirect_to @workorder
    end
  end

  def destroy
    @workorder.destroy!
  end

  private

  def workorder_params
    params.require(:workorder).permit(:id, :item_id, :status, :customerName, :itemDesc)
    params.require(:form).permit(:customer_id, :cust_item_id)
  end
end
