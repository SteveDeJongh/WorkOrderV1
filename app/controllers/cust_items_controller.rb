class CustItemsController < ApplicationController
  before_action :set_cust_item, only: %i[ show edit update destroy ]

  # GET /cust_items or /cust_items.json
  def index
    @cust_items = CustItem.all
  end

  # GET /cust_items/1 or /cust_items/1.json
  def show
  end

  # GET /cust_items/new
  def new
    @cust_item = CustItem.new
  end

  # GET /cust_items/1/edit
  def edit
  end

  # POST /cust_items or /cust_items.json
  def create
    @cust_item = CustItem.new(cust_item_params)
    @cust_item.customer_id = params[:form][:customer_id].to_i

    respond_to do |format|
      if @cust_item.save
        format.html { redirect_to customer_url(@cust_item.customer_id)}
        format.json { render :show, status: :created, location: @cust_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cust_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cust_items/1 or /cust_items/1.json
  def update
    respond_to do |format|
      if @cust_item.update(cust_item_params)
        format.html { redirect_to cust_item_url(@cust_item), notice: "Cust item was successfully updated." }
        format.json { render :show, status: :ok, location: @cust_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cust_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cust_items/1 or /cust_items/1.json
  def destroy
    @cust_item.destroy!

    respond_to do |format|
      format.html { redirect_to cust_items_url, notice: "Cust item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cust_item
      @cust_item = CustItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cust_item_params
      params.require(:cust_item).permit(:make, :model, :color, :size, :customer_id)
    end
end
