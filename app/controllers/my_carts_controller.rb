class MyCartsController < ApplicationController
  before_action :set_my_cart, only: %i[ show edit update destroy ]

  # GET /my_carts or /my_carts.json
  def index
    @my_carts = MyCart.all
  end

  # GET /my_carts/1 or /my_carts/1.json
  def show
  end

  # GET /my_carts/new
  def new
    @my_cart = MyCart.new
  end

  # GET /my_carts/1/edit
  def edit
  end

  # POST /my_carts or /my_carts.json
  def create
    @my_cart = My_Cart.new(my_cart_params)
    #@product = Product.find(1)



    respond_to do |format|
      if @my_cart.save
        format.html { redirect_to my_cart_url(@my_cart), notice: "My cart was successfully created." }
        format.json { render :show, status: :created, location: @my_cart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_cart.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /my_carts/1 or /my_carts/1.json
  def update
    respond_to do |format|
      if @my_cart.update(my_cart_params)
        format.html { redirect_to my_cart_url(@my_cart), notice: "My cart was successfully updated." }
        format.json { render :show, status: :ok, location: @my_cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_carts/1 or /my_carts/1.json
  def destroy
    @my_cart.destroy if @my_cart.id == session[:my_cart_id]
    session[:cart_id]

    respond_to do |format|
      format.html { redirect_to my_carts_url, notice: "My cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_cart
      @my_cart = MyCart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_cart_params
      params.fetch(:my_cart, {})
    end

    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to root_path, notice: "That cart doesn't exist"
    end
end
