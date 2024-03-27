class WorkordersController < ApplicationController
  def index
    @workorders = Workorder.all
  end

  def show
    @workorder = Workorder.find(params[:id])
  end

  def new
    @workorder = Workorder.new
  end

  def create
    @workorder = Workorder.new(workorder_params)

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

  private

  def workorder_params
    params.require(:workorder).permit(:id, :customer, :item, :status)
  end
end
