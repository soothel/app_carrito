class TypePaymentsController < ApplicationController
  before_action :set_type_payment, only: %i[ show edit update destroy ]
  layout "panel_admin"
  before_action :authenticate_user!
  
  # GET /type_payments or /type_payments.json
  def index
    @type_payments = TypePayment.all
  end

  # GET /type_payments/1 or /type_payments/1.json
  def show
  end

  # GET /type_payments/new
  def new
    @type_payment = TypePayment.new
  end

  # GET /type_payments/1/edit
  def edit
  end

  # POST /type_payments or /type_payments.json
  def create
    @type_payment = TypePayment.new(type_payment_params)

    respond_to do |format|
      if @type_payment.save
        format.html { redirect_to type_payment_url(@type_payment), notice: "Type payment was successfully created." }
        format.json { render :show, status: :created, location: @type_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_payments/1 or /type_payments/1.json
  def update
    respond_to do |format|
      if @type_payment.update(type_payment_params)
        format.html { redirect_to type_payment_url(@type_payment), notice: "Type payment was successfully updated." }
        format.json { render :show, status: :ok, location: @type_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_payments/1 or /type_payments/1.json
  def destroy
    @type_payment.destroy

    respond_to do |format|
      format.html { redirect_to type_payments_url, notice: "Type payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_payment
      @type_payment = TypePayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_payment_params
      params.require(:type_payment).permit(:name, :deleted)
    end
end
