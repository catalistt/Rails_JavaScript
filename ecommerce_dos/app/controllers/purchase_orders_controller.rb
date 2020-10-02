class PurchaseOrdersController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @purchase_orders = PurchaseOrder.all
  end

  def show
  end

  def new
    @purchase_order = PurchaseOrder.new
  end


  def edit
  end

  def create
    @purchase_order = PurchaseOrder.new(purchase_order_params)

    respond_to do |format|
      if @purchase_order.save
        format.html { redirect_to @purchase_order, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @purchase_order }
      else
        format.html { render :new }
        format.json { render json: @purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @purchase_order.update(product_params)
        format.html { redirect_to @purchase_order, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase_order }
      else
        format.html { render :edit }
        format.json { render json: @purchase_orders.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @purchase_order.destroy
    respond_to do |format|
      format.html { redirect_to purchase_orders_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def open_order
		open.last
  end
  

  def add_product
    #con devise --> current_user.open_order
    @purchase_order = PurchaseOrder.open.last
    @purchase_order ||= PurchaseOrder.create(status: :open, total_amount: @product.price)
    @purchase_order.products << @product
  
  end

  def single_open_order
    if user.open_orders.count.positive?
        record.errors.add(:status, "There is already an open order")
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_order
      @purchase_order = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_order_params
      params.require(:@purchase_order).permit(:total_amount, :status, :code)
    end
end
