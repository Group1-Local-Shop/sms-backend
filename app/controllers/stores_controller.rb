class StoresController < ApplicationController

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
        params.permit(:merchant_id, :admin_id, :name)
    end

end
