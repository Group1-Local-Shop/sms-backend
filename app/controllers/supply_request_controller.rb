class SupplyRequestController < ApplicationController
    before_action :set_supply, only: %i[ show update destroy ]

    # GET /Supply
    def index
      @suppliers = Supply.all
  
      render json: @suppliers
    end
  
    # GET /supply/1
    def show
      render json: @supply
    end
  
    # POST /supply
    def create
      @supply = Supply.new(supply_params)
  
      if @supply.save
        render json: @supply, status: :created, location: @supply
      else
        render json: @supply.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /supply/1
    def update
      if @supply.update(supply_params)
        render json: @supply
      else
        render json: @supply.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /supply/1
    def destroy
      @supply.destroy
    end
  
    private
      def set_supply
        @supply = Supply.find(params[:id])
      end
      def supply_params
        params.require(:supply).permit(:product_id, :buying_price, :product_quantity)
      end
  end
