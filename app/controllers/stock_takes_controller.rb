class StockTakesController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :not_found_error
rescue_from ActiveRecord::RecordInvalid, with: :invalid_record_error
    def index
        render json: StockTake.all 
    end

    def show
        find_stock_take
        render json: stock_take 
    end

    def create
        find_stock_take
        stock_take.create!(stock_take_params)
        render json: stock_take, status: :created
    end

    def update
        find_stock_take
        stock_take.update!(stock_take_params)
        render json: stock_take, status: :accepted
    end

    def destroy
        find_stock_take
        stock_take.destroy
        head :no_content
    end

    def stock
        stock = []
        stock << stock_take
    end

    def damaged_items
        total = stock.sum{|stock_take| stock_take.quantity_damaged}
        render json: total
    end

    def stock_quantity
        total = stock.sum{|stock_take| stock_take.checked_in}
        render json: total
    end

    private
    def find_stock_take
        stock_take = StockTake.find(params[:id])
    end

    def stock_take_params
        params.permit(:quantity_damaged, :checked_in, :checked_out)
    end
    def not_found_error
        render json: {errors: "Stock take not found"}, status: :not_found 
    end

    def invalid_record_error(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
