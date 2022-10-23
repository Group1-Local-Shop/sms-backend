class StoresController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_error
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record_error

    def index 
        stores = Store.all
        render json: stores
    end 

    def show 
        store = Store.find(params[:id])
        render json: store
    end 

    def create 
         new_store = Store.create(store_params)
         render json: new_store
    end 
    
    def update
        store = Store.find(params[:id])
        store.update(store_params)
        render json: store
    end

    def destroy
        store = Store.find(params[:id])
        store.destroy
        head :no_content
    end

    private

    def store_params
        params.permit(:name,:user_id,:stock_take_id)
    end

    def not_found_error
        render json: {errors: "Store not found"}, status: :not_found 
      end
    
      def invalid_record_error(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
      end 

end
