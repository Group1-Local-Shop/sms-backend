class ProductsController < ApplicationController

  def index 
    products = Product.all
    render json: products
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
 
  def destroy 
    product = Product.find(params[:id])
    product.destroy
    head :no_head
  end

  private 

  def product_params
    params.permit(:payment_status, :no_of_received_item, :no_of_product_in_stock, :buying_price, :selling_price, :no_of_spoiled_item)
  end 



end

