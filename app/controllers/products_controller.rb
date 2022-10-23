class ProductsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :not_found_error
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record_error

  def index
    products = Product.all
    render json: Product.all
  end 

   def show 
    product = Product.find(params[:id])
    render json: product

    end 

  def create 
    new_product = Product.create(product_params)
    render json: new_product

  end 

  def update 
    product = Product.find(params[:id])
    product.update(product_params)
    render json: product
   end 

  private 

  def product_params
    params.permit(:name, :image)
  end

  def not_found_error
    render json: {errors: "Product  not found"}, status: :not_found 
  end

  def invalid_record_error(invalid)
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end 

end

