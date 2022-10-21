class StoresController < ApplicationController
    before_action :set_store, only: %i[ show update destroy ]
  
    # GET /stores
    def index
      @stores = Store.all
  
      render json: @stores
    end
  
    # for each store
    # GET
    def show
      render json: @store
    end
  
    # POST
    def create
      @store = Store.new(store_params)
  
      if @store.save
        render json: @store, status: :created, location: @store
      else
        render json: @stores.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH
    def update
      if @store.update(store_params)
        render json: @store
      else
        render json: @store.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE
    def destroy
      @store.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_store
        @store = Store.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def store_params
        params.require(:store).permit(:store_id, :product_id, :product_quantity, :sales)
      end
  end